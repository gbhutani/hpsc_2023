
import math
def find_cuberoot(num): 
 return math.pow(num, 1/3)
 
number=float(input("Enter any number to find out cube rooot="))
cuberoot=find_cuberoot(number)

print("The cuberoot of", number, "is",cuberoot)
