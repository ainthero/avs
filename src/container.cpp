//------------------------------------------------------------------------------
// container_Constr.cpp - содержит функции обработки контейнера
//------------------------------------------------------------------------------

#include "container.h"

//------------------------------------------------------------------------------
// Конструктор контейнера
Container::Container(int s): len{0}, size{s} {
    storage = new Shape*[s];
}

//------------------------------------------------------------------------------
// Деструктор контейнера
Container::~Container() {
    Clear();
    delete[] storage;
}

//------------------------------------------------------------------------------
// Очистка контейнера от элементов (освобождение памяти)
void Container::Clear() {
    for(int i = 0; i < len; i++) {
        delete storage[i];
    }
    len = 0;
}

//------------------------------------------------------------------------------
// Ввод содержимого контейнера из указанного потока
void Container::In(ifstream &ifst) {
    while(!ifst.eof()) {
        if((storage[len] = Shape::StaticIn(ifst)) != 0) {
            len++;
        }
    }
}

//------------------------------------------------------------------------------
// Случайный ввод содержимого контейнера
void Container::InRnd(int s) {
    if(s > size) {
        s = size;
    }
    while(len < s) {
        if((storage[len] = Shape::StaticInRnd()) != nullptr) {
            len++;
        }
    }
}

//------------------------------------------------------------------------------
// Вывод содержимого контейнера в указанный поток
void Container::Out(ofstream &ofst) {
    ofst << "Container contains " << len << " elements.\n";
    for(int i = 0; i < len; i++) {
        ofst << i << ": ";
        storage[i]->Out(ofst);
    }
}

//------------------------------------------------------------------------------
// Сортировка контейнера методом Straight Selection
void Container::Sort() {
    for (int i = 0; i < len - 1; ++i) {
        int mn_index = i;
        for (int j = i + 1; j < len; ++j) {
            if (storage[j]->Area() < storage[mn_index]->Area()) {
                mn_index = j;
            }
        }
        if (mn_index != i) {
            swap(storage[i], storage[mn_index]);
        }
    }
}
