
import mysql.connector

def insert_entry(ID,name,email,doj,desgn,ph_no,dept):
    mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="",
      database="webdb"
    )
    '''
    ID=int(input("enter a number"))
    name=input("enter a name")
    email=input("enter a email id")
    doj=input("enter a date in reverse order")
    desgn=input("provide a suitable designation")
    ph_no=input("enter a phone number")
    dept=input("enter dept")
    '''
    mycursor = mydb.cursor()

    sql = "INSERT INTO `employee`(`employee_id`, `employee_name`, `email`, `doj`, `designation`, `phone_number`, `dept`) VALUES (%s,%s,%s,%s,%s,%s,%s)"
    val = (ID,name,email,doj,desgn,ph_no,dept)

    mycursor.execute(sql,val)
    mydb.commit()

#print(mycursor.rowcount, "record inserted.")
