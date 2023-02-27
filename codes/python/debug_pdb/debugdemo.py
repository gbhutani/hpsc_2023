x="three"
y=-22.0

def f(z):
	x=z+10
	print(f"**** inside the function f, after the execution of assign statement: x={x}, y={y},z={z}")
	return x

print(f"**** before calling function f: x={x}, y={y}")

y=f(x)

print(f"**** after calling the function f: x={x}, y={y}")

print(f"x={x}")
print(f"y={y}")
