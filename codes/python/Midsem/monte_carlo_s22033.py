def monte_carlo_pi(num_points):
    import random
    a=num_points
    b=0
    for i in range(a):
        x=random.uniform(-0.5,0.5)
        y=random.uniform(-0.5,0.5)
        if  x**2+y**2<=0.25:
            b=b+1
    r=b/a
    pi_est=4*r
    return pi_est

def test_pi():
    import numpy as np
    A=np.linspace(1000,10**6,1000)
    for i,n in enumerate(A):
        n=int(n)
        pi_test=monte_carlo_pi(n)
        print("estimated value of pi is %20.15f for %s number of points" %(pi_test,i))
        assert abs(np.pi-pi_test)<=0.2*np.pi, "estimated value is outside of 20% of actual value"

if __name__ == "__main__":
    print("Running test...")
    test_pi()

