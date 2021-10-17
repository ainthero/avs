//
// Created by ainthero on 10/17/21.
//

#ifndef TASK_TETRAHEDRON_H
#define TASK_TETRAHEDRON_H

//------------------------------------------------------------------------------
// tetrahedron.h - содержит описание правильного тетраэдра и его интерфейса
//------------------------------------------------------------------------------

#include <fstream>
using namespace std;

# include "rnd.h"
#include "shape.h"

class Tetrahedron : public Shape {
public:
    Tetrahedron() = default;
    virtual ~Tetrahedron() = default;
    // Ввод параметров правильного тетраэдра из файла
    virtual void In(ifstream &ifst);
    // Случайный ввод параметров правильного тетраэдра
    virtual void InRnd();
    // Вывод параметров правильного тетраэдра в форматируемый поток
    virtual void Out(ofstream &ofst);
    // Вычисление площади поверхности правильного тетраэдра
    virtual double Area();
private:
    int edge;
};


#endif //TASK_TETRAHEDRON_H
