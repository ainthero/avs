//
// Created by ainthero on 10/17/21.
//

//------------------------------------------------------------------------------
// tetrahedron.cpp - содержит методы параллелепипеда
//------------------------------------------------------------------------------

#include <cmath>
#include "tetrahedron.h"

//------------------------------------------------------------------------------
// Ввод параметров правильного тетраэдра из файла
void Tetrahedron::In(ifstream &ifst) {
    ifst >> density >> edge;
}

// Случайный ввод параметров правильного тетраэдра
void Tetrahedron::InRnd() {
    density = Shape::rnd_dbl.Get();
    edge = Shape::rnd20.Get();
}

//------------------------------------------------------------------------------
// Вывод параметров правильного тетраэдра в форматируемый поток
void Tetrahedron::Out(ofstream &ofst) {
    ofst << "It is Tetrahedron: density = " << density
         << ", Edge = " << edge
         << ". Area = " << Area() << "\n";
}

//------------------------------------------------------------------------------
// Вычисление площади поверхности правильного тетраэдра
double Tetrahedron::Area() {
    return sqrt(3) * edge * edge;
}


