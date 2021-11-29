//------------------------------------------------------------------------------
// tetrahedron.cpp - содержит функции обработки тетраэдра
//------------------------------------------------------------------------------

#include "tetrahedron.h"

extern "C" float area_tetrahedron(int edge);

//------------------------------------------------------------------------------
// Ввод параметров тетраэдра из файла
void In(tetrahedron &t, ifstream &ifst) {
    ifst >> t.density >> t.edge;
}

// Случайный ввод параметров тетраэдра
void InRnd(tetrahedron &t) {
    t.density = (double )Random();
    t.edge = Random();
}

//------------------------------------------------------------------------------
// Вывод параметров тетраэдра в форматируемый поток
void Out(tetrahedron &t, ofstream &ofst) {
    ofst << "It is Tetrahedron: density = " << t.density
         << ", Edge = " << t.edge
         << ". Area = " << Area(t) << "\n";
}

//------------------------------------------------------------------------------
// Вычисление периметра тетраэдра
double Area(tetrahedron &t) {
    return area_tetrahedron(t.edge);
}
