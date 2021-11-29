#ifndef __parallelepiped__
#define __parallelepiped__

//------------------------------------------------------------------------------
// parallelepiped.h - содержит описание треугольника
//------------------------------------------------------------------------------

#include <fstream>
using namespace std;

# include "rnd.h"

//------------------------------------------------------------------------------
// треугольник
struct parallelepiped {
    double density;
    int a, b, c; // стороны
};

// Ввод параметров треугольника из файла
void In(parallelepiped &t, ifstream &ifst);

// Случайный ввод параметров треугольника
void InRnd(parallelepiped &e);

// Вывод параметров треугольника в форматируемый поток
void Out(parallelepiped &t, ofstream &ofst);

// Вычисление периметра треугольника
double Area(parallelepiped &t);

#endif
