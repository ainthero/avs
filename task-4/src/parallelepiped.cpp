//------------------------------------------------------------------------------
// parallelepiped.cpp - содержит функции обработки параллелепипеда
//------------------------------------------------------------------------------

#include "parallelepiped.h"

extern "C" float area_parallelepiped(int a, int b, int c);

//------------------------------------------------------------------------------
// Ввод параметров параллелепипеда из потока
void In(parallelepiped &t, ifstream &ifst) {
    ifst >> t.density >> t.a >> t.b >> t.c;
}

// Случайный ввод параметров параллелепипеда
void InRnd(parallelepiped &t) {
    t.density = (double)Random();
    t.a = Random();
    t.b = Random();
    t.c = Random();
}

//------------------------------------------------------------------------------
// Вывод параметров параллелепипеда в поток
void Out(parallelepiped &t, ofstream &ofst) {
    ofst << "It is Parallelepiped: density = " << t.density
         << ", A = " << t.a
         << ", B = " << t.b
         << ", C = " << t.c
         << ". Area = " << Area(t) << "\n";
}

//------------------------------------------------------------------------------
// Вычисление периметра параллелепипеда
double Area(parallelepiped &t) {
    return area_parallelepiped(t.a, t.b, t.c);
}
