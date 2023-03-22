import pdb
x=
y=-22.0
def f(z):
    pdb.set_trace()
    x=z+10
    return x
y=f(x)
print(f"x={x}")
print(f"y={y}")

