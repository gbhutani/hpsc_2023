import sys
import monte_carlo_pi_gb as mcpi 

num = sys.argv[1]
num = int(num)
estimate_pi = mcpi.monte_carlo_pi(num)
print(f"for {num} points the MC estimate of pi is {estimate_pi}")