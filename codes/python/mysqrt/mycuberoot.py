"""
A python module for calculating cube root using the 
Newton's method as discussed by sir for sqrt in ME522 class
"""

def cuberootNT(N,debug=False):
	"""
	The actual cuberootNT function
	Inputs
	N: the number whose cube root is to be calculated
	debug: True if iteration details need to be printed. Default value is False
	"""
	from numpy import nan
		
	s=1.
	kmax=100
	tol=1.0e-14
	for k in range(kmax):
		if debug:
			print("At iteration number %s, s= %20.15f" %(k,s))
		s0=s
		s = (1/3)*(2*s+N/s**2)
		
		delta_s=s-s0
		if(abs(delta_s/N))<tol:
			break
	if debug:
		print("After %s iterations,  s=%20.15f" %(k+1,s))
	return s

def test_main():
	from numpy import cbrt
	Nvalues=[0., 2., 100, 1.e6]
	for N in Nvalues:
		print("Testing with N=%20.15e" %N)
		s=cuberootNT(N)
		s_numpy=cbrt(N)
		print("cbrtNT s = %20.15e, numpy s = %20.15e" %(s,s_numpy))
		assert abs(s-s_numpy) < 1e-14, "Your cbrt does not agree with numpy cbrt"
