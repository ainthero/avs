//
// Created by ainthero on 10/17/21.
//

#ifndef TASK_PARALLELEPIPED_H
#define TASK_PARALLELEPIPED_H

//------------------------------------------------------------------------------
// parallelepiped.h - содержит описание шара и его интерфейса
//------------------------------------------------------------------------------

#include <fstream>
using namespace std;

# include "rnd.h"
#include "shape.h"

class Parallelepiped : public Shape {
public:
    Parallelepiped() = default;
    virtual ~Parallelepiped() = default;
    // Ввод параметров параллелепипеда из файла
    virtual void In(ifstream &ifst);
    // Случайный ввод параметров параллелепипеда
    virtual void InRnd();
    // Вывод параметров параллелепипеда в форматируемый поток
    virtual void Out(ofstream &ofst);
    // Вычисление площади поверхности параллелепипеда
    virtual double Area();
private:
    int edge_a, edge_b, edge_c;
};


#endif //TASK_PARALLELEPIPED_H
