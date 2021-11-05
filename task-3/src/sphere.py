import math
import random

class Sphere:
    def __init__(self):
        self.density = 0
        self.radius = 0

    def ReadStrArray(self, strArray, i):
        if i >= len(strArray) - 1:
            return 0
        self.density = float(strArray[i])
        self.radius = int(strArray[i + 1])
        i += 2
        return i

    def InitRnd(self):
        self.density = random.random() * 20
        self.radius = random.randint(1, 20)
        pass

    def Print(self):
        print("Sphere: density = {}, radius = {}, Area = {}".format(self.density, self.radius, self.Area()))
        pass

    def Write(self, ostream):
        ostream.write("Sphere: density{}, radius = {}, Area = {}".format(self.density, self.radius, self.Area()))
        pass

    def Area(self):
        return 4 * 3.14159265359 * self.radius * self.radius
