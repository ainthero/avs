//
// Created by ainthero on 10/17/21.
//

//------------------------------------------------------------------------------
// parallelepiped.cpp - содержит методы параллелепипеда
//------------------------------------------------------------------------------

#include "parallelepiped.h"

//------------------------------------------------------------------------------
// Ввод параметров параллелепипеда из файла
void Parallelepiped::In(ifstream &ifst) {
    ifst >> density >> edge_a >> edge_b >> edge_c;
}

// Случайный ввод параметров параллелепипеда
void Parallelepiped::InRnd() {
    density = Shape::rnd_dbl.Get();
    edge_a = Shape::rnd20.Get();
    edge_b = Shape::rnd20.Get();
    edge_c = Shape::rnd20.Get();
}

//------------------------------------------------------------------------------
// Вывод параметров параллелепипеда в форматируемый поток
void Parallelepiped::Out(ofstream &ofst) {
    ofst << "It is Parallelepiped: density = " << density
    << ", A = " << edge_a
    << ", B = " << edge_b
    << ", C = " << edge_c
    << ". Area = " << Area() << "\n";
}

//------------------------------------------------------------------------------
// Вычисление площади поверхности параллелепипеда
double Parallelepiped::Area() {
    return 2 * (edge_a * edge_b + edge_a * edge_c + edge_b * edge_c);
}

