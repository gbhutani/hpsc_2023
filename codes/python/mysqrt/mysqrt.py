x=2.0
s=1.
kmax=3
for k in range(kmax):
	print("At iteration number %s, s= %s" %(k,s))
	s = 0.5*(s+x/s)
print("After %s iterations, s=%s" %(k+1,s))
