#include <iostream>
#include <mutex>
#include <thread>
#include <vector>
#include <random>
#include <map>
#include <atomic>
#include <deque>

const int DURATION = 10000;
const int MIN_SLEEP = 100;
const int MAX_SLEEP = 500;

std::random_device rd;
std::mt19937 rng(rd());
std::uniform_int_distribution<int> uni(MIN_SLEEP, MAX_SLEEP);

int get_cooldown() {
    return uni(rng);
}

class Printer {
private:
    std::mutex mtx;
public:
    void print(const std::string &str) {
        mtx.lock();
        std::cout << str << std::endl;
        mtx.unlock();
    }
};

struct Talker {
    std::mutex mtx;
    std::atomic<bool> is_end;
    int id;

    Talker(int id) {
        is_end = false;
        this->id = id;
    }
};

Printer prnt;
std::deque<Talker> talkers;

void exec(int id) {
    while (!talkers[id].is_end.load()) {
        std::this_thread::sleep_for(std::chrono::milliseconds(get_cooldown()));
        for (int i = 0; i < talkers.size(); i++) {
            if (i == id)
                continue;
            if (talkers[i].mtx.try_lock()) {
                talkers[id].mtx.lock();
                prnt.print(std::to_string(i) + " started talking with " + std::to_string(id));
                std::this_thread::sleep_for(std::chrono::milliseconds(get_cooldown() * 10));
                prnt.print(std::to_string(i) + " ended talking with " + std::to_string(id));
                talkers[id].mtx.unlock();
                talkers[i].mtx.unlock();
                break;
            }
        }
    }
}

int main() {
    int n;
    std::cout << "Enter number of talkers: ";
    std::cin >> n;
    std::cout << std::endl;
    for (int i = 0; i < n; i++)
        talkers.emplace_back(i);
    std::vector<std::thread> threads;
    threads.reserve(n);
    for (int i = 0; i < n; i++)
        threads.push_back(std::move(std::thread(exec, i)));
    std::this_thread::sleep_for(std::chrono::milliseconds(DURATION));
    for (int i = 0; i < n; i++)
        talkers[i].is_end = true;
    for (int i = 0; i < n; i++)
        threads[i].join();
    std::cout << "End.";
    return 0;
}
