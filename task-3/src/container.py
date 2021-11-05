import random

import sphere
import parallelepiped
import tetrahedron


class Container:
    def __init__(self):
        self.store = []

    def FillRnd(self, n):
        for i in range(n):
            key = random.randint(1, 3)
            if key == 1:  # признак шара
                shape = sphere.Sphere()
            elif key == 2:  # признак параллелепипеда
                shape = parallelepiped.Parallelepiped()
            elif key == 3:  # признак тетраэдра
                shape = tetrahedron.Tetrahedron()
            shape.InitRnd()
            self.store.append(shape)

    def Print(self):
        print("Container is store", len(self.store), "shapes:")
        for shape in self.store:
            shape.Print()
        pass

    def Write(self, ostream):
        ostream.write("Container is store {} shapes:\n".format(len(self.store)))
        for shape in self.store:
            shape.Write(ostream)
            ostream.write("\n")
        pass

    def Sort(self):
        for i in range(len(self.store) - 1):
            mn_index = i
            for j in range(i + 1, len(self.store)):
                if self.store[j].Area() < self.store[mn_index].Area():
                    mn_index = j
            if mn_index != i:
                self.store[i], self.store[mn_index] = self.store[mn_index], self.store[i]

