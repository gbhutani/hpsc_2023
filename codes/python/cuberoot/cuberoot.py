#cuberoot using python

#to measure closeness of current result

def diff(n, mid):
	if (n > (mid * mid * mid)):
		return (n - (mid * mid * mid))
	else:
		return ((mid * mid * mid) - n)


#for finding cuberoot

def cubicRoot(n):

	a = 0
	b = n

	
	e = 1e-8
	while (True):

		mid = (a + b) / 2
		error = diff(n, mid)

		
		if (error <= e):
			return mid

		if ((mid * mid * mid) > n):
			b = mid

		else:
			a = mid


n = int(input('enter a number \n'))
if (n<0):
	print("not a number")
else:
	print("Cubic root of", n, "is",round(cubicRoot(n), 8))
