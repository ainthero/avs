import math
import random

class Tetrahedron:
    def __init__(self):
        self.density = 0
        self.edge = 0

    def ReadStrArray(self, strArray, i):
        if i >= len(strArray) - 1:
            return 0
        self.density = float(strArray[i])
        self.edge = int(strArray[i + 1])
        i += 2
        return i

    def InitRnd(self):
        self.density = random.random() * 20
        self.edge = random.randint(1, 20)
        pass

    def Print(self):
        print("Tetrahedron: density = {}, a = {}, Area = {}".format(self.density, self.edge, self.Area()))
        pass

    def Write(self, ostream):
        ostream.write("Tetrahedron: density = {}, a = {}, Area = {}".format(self.density, self.edge, self.Area()))
        pass

    def Area(self):
        return math.sqrt(3) * self.edge * self.edge
