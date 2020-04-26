
import sys
import random

from collections import Counter

groups = [[1, 2, 3, 4], [5, 6,7], [8, 9, 10, 11], [12,13,14,15], [16, 17,18], [19, 20, 21, 22], [23,24,25,26]]
dummy=groups[:]
initgroup = int(sys.argv[1])
marks = int(sys.argv[2])
def adapt(initgroup,marks):
	temp=initgroup
	test=random.choice(dummy[temp])
	dummy[temp].remove(test)

	if (marks<8):
	    temp-=1
	elif marks>=8:
	    temp+=1
	return temp


nextgroup = adapt(initgroup,marks)
nexttest = random.choice(dummy[nextgroup])

print(nexttest)
f1 = open("questions.txt","r")
f2 = open("current.txt","w")
readfile =f1.read()
passage = readfile.split("\n\n")
f2.write(passage[nexttest])
f1.close()
f2.close()
