import matplotlib.pyplot as plt; plt.rcdefaults()
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.pyplot import figure
import mpld3
f = open('marks3.txt')
variable=[]
scale=[]
triplets=f.read()

triplets=triplets.split(",")
triplets =  triplets[:-1]

for i in range(len(triplets)):
	triplets[i]=int(triplets[i])
	variable.append("Test"+str(i))
	scale.append(i)
plt.bar(variable, triplets, align='center', alpha=0.5)
#plt.bar([1,2,3], [2,2,3], align='center', alpha=0.5)
plt.xticks(scale,variable)
plt.ylabel('Score')
plt.title('Speaking Score Graph')
f.close()
print(triplets)
plt.savefig('myfig2.png')
###############
