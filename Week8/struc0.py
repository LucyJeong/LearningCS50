import csv
from student import Student

students = []
for i in range(3):
	
	print('name:', end="")
	name = input('')

	print('dorm:', end="")
	dorm = input('')

	students.append(Student(name,dorm))

file = open('students.csv', 'w')
writer = csv.writer(file)

for student in students:
	writer.writerow((student.name, student.dorm))
file.close()
