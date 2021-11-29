#!/bin/bash
nasm -f elf64 -g -F dwarf areasort.asm -o areasort.o;
g++ -g -o ../bin/task main.cpp areasort.o container.cpp shape.cpp tetrahedron.cpp parallelepiped.cpp sphere.cpp -no-pie;