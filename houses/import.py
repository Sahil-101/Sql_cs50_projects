# TODO
from sys import argv
import csv
from cs50 import SQL

db = SQL("sqlite:///students.db")
#function for reading with all condition
def enter(csv_read_var):
    fist_exception=0
    for i in csv_read_var:
        if fist_exception==0:
            fist_exception+=1
            continue
        if len(i[0].split())<3:
            name=i[0].split()
            #print("if name " , name)
            db.execute("INSERT INTO students (first , middle , last , house , birth) VALUES(? , ? , ? , ? , ?)",name[0],"NONE",name[1],i[1],i[2])
        else:
            name=i[0].split()
            #print("else name" , name)
            db.execute("INSERT INTO students (first , middle , last , house , birth) VALUES(? , ? , ? , ? , ?)",name[0],name[1],name[2],i[1],i[2])

#reading from csv using function
with open(argv[1],'r') as csv_file:
    csv_read  = csv.reader(csv_file)
    enter(csv_read)



