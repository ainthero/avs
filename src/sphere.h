//
// Created by ainthero on 10/17/21.
//

#ifndef TASK_SPHERE_H
#define TASK_SPHERE_H

//------------------------------------------------------------------------------
// sphere.h - содержит описание шара и его интерфейса
//------------------------------------------------------------------------------

#include <fstream>
using namespace std;

# include "rnd.h"
#include "shape.h"

class Sphere : public Shape {
public:
    Sphere() = default;
    virtual ~Sphere() = default;
    // Ввод параметров шара из файла
    virtual void In(ifstream &ifst);
    // Случайный ввод параметров шара
    virtual void InRnd();
    // Вывод параметров шара в форматируемый поток
    virtual void Out(ofstream &ofst);
    // Вычисление площади поверхности шара
    virtual double Area();
private:
    int radius;
};


#endif //TASK_SPHERE_H
