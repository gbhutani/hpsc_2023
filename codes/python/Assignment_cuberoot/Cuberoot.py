"""A python module for calculating Cube root using the Newton's method """


# Making function for finding the cuberoot.
def mycubrt(x, debug=False):
	if x==0.:
		return 0.
	s=1. #initial guess value
	k_max=125 # maximum no. of iteration
	tolerence=1.0e-14 # setting up tolerence value for convergence
	for k in range(k_max):
		if debug:
			print("At iteration number %s, s= %12.10f" %(k,s))
		s_0=s
		s = (1/3)*((2*s)+(x/(s*s)))
		delta_s=s-s_0
		if(abs(delta_s/x))<tol:
			break
	if debug:
		print("After %s itertions, s=%12.10f" %(k+1,s))
	return s

# Defining test cases 
def test_main():
	from numpy import cbrt
	x_values=[ 0., 8., 1000, 1e9, -1000]
	for x in x_values:
		print("Testing with x=%10.12e" %x)
		c_nt=cbrtNewton(x)
		c_numpy=cbrt(x)
		print("cbrtNewton s =%12.10e, numpy s =%12.10e" %(c, c_numpy))
		assert abs(c_nt-c_numpy) < 1e-14, "Cube root calulated does not agree with numpy cbrt"



		
