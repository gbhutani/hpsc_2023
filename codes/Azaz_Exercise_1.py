#!/usr/bin/env python
# coding: utf-8

# In[ ]:


from matplotlib import pyplot as plt
import numpy as np
import math
get_ipython().run_line_magic('matplotlib', 'inline')

def my_exp(x, n=100):
    result = 1.0
    x = 1.0
    for i in range(1, n+1):
        x *= x / i
        result += x
    return result
x = np.linspace(0,100,1000)
my_y=my_exp(x)
np_y=np.exp(x)
diff = my_y-np_y

fig=plt.figure()
ax=fig.add_axes([0,0,100,100])
ax.plot(x,np_y(x))
ax.plot(x,my_y(x))


# In[6]:





# In[7]:


ax.plot(xx,np_y)


# In[17]:


my_exp(0)


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




