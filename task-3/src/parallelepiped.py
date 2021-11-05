import random

class Parallelepiped:
    def __init__(self):
        self.density = 0
        self.a = 0
        self.b = 0
        self.c = 0

    def ReadStrArray(self, strArray, i):
        if i >= len(strArray) - 3:
            return 0
        self.density = float(strArray[i])
        self.a = int(strArray[i + 1])
        self.b = int(strArray[i + 2])
        self.c = int(strArray[i + 3])
        i += 4
        return i

    def InitRnd(self):
        self.density = random.random() * 20
        self.a = random.randint(1, 20)
        self.b = random.randint(1, 20)
        self.c = random.randint(1, 20)
        pass

    def Print(self):
        print("Parallelepiped: density = {}, a = {},  b = {},  c = {}, Area = {}".format \
                     (self.density, self.a, self.b, self.c, self.Area()))
        pass

    def Write(self, ostream):
        ostream.write("Parallelepiped: density = {}, a = {},  b = {},  c = {}, Area = {}".format \
                     (self.density, self.a, self.b, self.c, self.Area()))
        pass

    def Area(self):
        return 2 * (self.a * self.b + self.a * self.c + self.b * self.c)
