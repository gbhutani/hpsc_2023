#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Mar 28 20:10:32 2023

@author: bhutani
"""

import random
import numpy as np
import matplotlib.pyplot as plt

def monte_carlo_pi(num_points):

    inside = 0    
    for i in range(num_points):
        
        x = random.uniform(-0.5, 0.5)
        y = random.uniform(-0.5, 0.5)
        dist=np.sqrt(x**2 + y**2)
        
        if dist < 0.5:
            inside = inside + 1
            
    estimate_pi = (inside / num_points) * 4
    return estimate_pi
    
def test_pi(plot_it=False):
    num_pts=[100,1000,10000,100000,1000000]
    estimate_list=[]
    for num in num_pts:
        pi_estimate = monte_carlo_pi(num)
        print(f"For {num} number of points the estimate of pi is {pi_estimate}")
        assert abs(np.pi - pi_estimate) < 0.2*np.pi
        if(plot_it):
            estimate_list.append(pi_estimate)
    if(plot_it):
        plt.plot(num_pts,estimate_list,'*--')
        plt.show()

if __name__ == "__main__":
    print("Running test")
    test_pi(True)

