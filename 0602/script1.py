import pprint,re
fname = input()
failed = 0
studdic={}

def cgpacal(grades):
	point=0
	for i in grades:
		if("(O)" in i):
			point+=10
		elif("(A+)" in i):
			point+=9
		elif("(A)" in i):
                        point+=8.5
		elif("(B+)" in i):
                        point+=8
		elif("(B)" in i):
                        point+=7
		elif("(C)" in i):
                        point+=6
		elif("(P)" in i):
                        point+=5

	return("{:.2f}".format(point/float(len(grades))))


with open(fname,"r+") as f:
	for i in f:
		if(re.search("(F)", i)):
			studdic[i.split()[0]] =-len(re.findall("(F)",i))
		else:
			studdic[i.split()[0]]=cgpacal(i.split()[1:]) 
for student in sorted(studdic.keys()):
	print("{0}\n{1}\n".format(student,studdic[student]))
