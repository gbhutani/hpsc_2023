# Python 3 program to find cubic root

# Returns the absolute value of
# n-mid*mid*mid


def diff(n, mid):
	if (n > (mid * mid * mid)):
		return (n - (mid * mid * mid))
	else:
		return ((mid * mid * mid) - n)

# Returns cube root of a no n


def cubicRoot(n):

	# Set start and end for binary
	# search
	start = 0
	end = n

	# Set precision
	e = 0.0000001
	while (True):

		mid = (start + end) / 2
		error = diff(n, mid)

		# If error is less than e
		# then mid is our answer
		# so return mid
		if (error <= e):
			return mid

		# If mid*mid*mid is greater
		# than n set end = mid
		if ((mid * mid * mid) > n):
			end = mid

		# If mid*mid*mid is less
		# than n set start = mid
		else:
			start = mid


n = int(input('enter a number'))
if (n<0):
	print("not a number")
else:
	print("Cubic root of", n, "is",
		round(cubicRoot(n), 6))
