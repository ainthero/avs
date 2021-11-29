#ifndef __tetrahedron__
#define __tetrahedron__

//------------------------------------------------------------------------------
// tetrahedron.h - содержит описание прямоугольника  и его интерфейса
//------------------------------------------------------------------------------

#include <fstream>
using namespace std;

# include "rnd.h"

// прямоугольник
struct tetrahedron {
    double density;
    int edge; // ширина, высота
};

// Ввод параметров прямоугольника из файла
void In(tetrahedron &r, ifstream &ifst);

// Случайный ввод параметров прямоугольника
void InRnd(tetrahedron &r);

// Вывод параметров прямоугольника в форматируемый поток
void Out(tetrahedron &r, ofstream &ofst);

// Вычисление периметра прямоугольника
double Area(tetrahedron &r);

#endif
