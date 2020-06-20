# TODO
from sys import argv
import csv
from cs50 import SQL

db=SQL("sqlite:///students.db")

#function for displaying clean data
def out(house):
    ok=db.execute("SELECT * FROM STUDENTS WHERE house = ?", house)
    for i in ok:
        print(i['first'],end=" ")
        if(i['middle']!='NONE'):
            print(i['middle'],end=" ")
        print(i['last'],end=", ")
        print("born",i['birth'])
            

out(argv[1])