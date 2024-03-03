
import sys
#sys.path.append("/home/s22033/")
import mysqrt
import time
if len(sys.argv) < 2:
    print("Usage: python root.py <number>")
    sys.exit(1)
num = float(sys.argv[1])
start_time = time.time()
s = mysqrt.sqrtNT(num)
end_time = time.time()
total_time = end_time - start_time

print(f"Sqrt of {num} is {s:.3f}, time taken {total_time:.3f} seconds")

