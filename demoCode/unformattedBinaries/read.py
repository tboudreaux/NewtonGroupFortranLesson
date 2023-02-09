from scipy.io import FortranFile
import os

if __name__ == "__main__":
    assert os.path.exists("i.bin")

    f = FortranFile("i.bin", 'r')
    values = f.read_ints()
    print(values)
