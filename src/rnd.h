#ifndef __rnd__
#define __rnd__

#include <cstdlib>
#include <ctime>   // для функции time()

//------------------------------------------------------------------------------
// rnd.h - содержит генератор случайных чисел в диапазоне от 1 до 20
//------------------------------------------------------------------------------

class Random {
public:
    Random(int f, int l) {
        if(f <= l) {
            first = f;
            last = l;
        } else {
            first = l;
            last = f;
        }
        // системные часы в качестве инициализатора
        srand(static_cast<unsigned int>(time(0)));
    }
    // Генерация случайного числа в заданном диапазоне
    int Get() {
        return rand() % (last - first + 1) + first;
    }
private:
    int first;
    int last;
};

class RandomDouble {
public:
    RandomDouble(double f, double l) {
        if(f <= l) {
            first = f;
            last = l;
        } else {
            first = l;
            last = f;
        }
        // системные часы в качестве инициализатора
        srand(static_cast<unsigned int>(time(0)));
    }
    // Генерация случайного числа в заданном диапазоне
    double Get() const
    {
        double f = (double)rand() / RAND_MAX;
        return first + f * (last - first);
    }
private:
    double first;
    double last;
};

#endif //__rnd__
