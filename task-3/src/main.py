import sys
import string

from extender import *


if __name__ == '__main__':
    if len(sys.argv) == 5:
        if sys.argv[1] == "-f":
            inputFileName = sys.argv[2]
        elif sys.argv[1] == "-n":
            inputN = int(sys.argv[2])
        else:
            print("Incorrect command line! You must write: python main -n N outputFileName1 outputFileName2")
            print("or python main -f inputFileName outputFileName1 outputFileName2")
            exit()
        outputFileName = sys.argv[3]
        outputFileNameSorted = sys.argv[4]
    else:
        print("Incorrect command line! You must write: python main -n N outputFileName1 outputFileName2")
        print("or python main -f inputFileName outputFileName1 outputFileName2")
        exit()

    container = Container()
    # Чтение исходного файла, содержащего данные, разделенные пробелами и переводами строки
    if sys.argv[1] == "-n":
        container.FillRnd(inputN)
    else:
        ifile = open(inputFileName)
        str = ifile.read()
        ifile.close()
        # Формирование массива строк, содержащего чистые данные в виде массива строк символов.
        strArray = str.replace("\n", " ").split(" ")
        ReadStrArray(container, strArray)

    print('==> Start')

    ofile = open(outputFileName, 'w')
    container.Write(ofile)
    ofile.close()

    container.Sort()

    ofile = open(outputFileNameSorted, 'w')
    container.Write(ofile)
    ofile.close()

    print('==> Finish')
