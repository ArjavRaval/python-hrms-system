
import mysql.connector

def insert_entry(eid,efname,elname,pemail,oemail,edoj,edes,ephone,edep,repman):
    mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="vasuvasu",
      database="hrms" #change the db here
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
	
	#doubly make sure that the query is correct and in correct order
    
    sql = "INSERT INTO `org_details`(`e_id`, `First_Name`, `Last_Name`, `per_email`, `org_email`, `DOJ`, `desig_id`, `ph_num`, `depart_id`, `report_man`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    val = (eid,efname,elname,pemail,oemail,edoj,edes,ephone,edep,repman)

    mycursor.execute(sql,val)
    mydb.commit()
    mydb.close()

def dup_check(eid):
    mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="vasuvasu",
            database="hrms"
        )
    mycursor = mydb.cursor()
    sql = "SELECT `e_id` FROM `org_details` WHERE `e_id` =" + str(eid)
    mycursor.execute(sql)
    #mydb.commit()
    x = mycursor.fetchall()
    return x
    mydb.close()

