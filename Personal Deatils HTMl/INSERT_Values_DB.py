import mysql.connector

def insertValues(eid, gender, BloodGrp, Addr_Line_1, Addr_Line_2, City, State, PIN):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="vasuvasu",
        database="hrms"
    )
    mycursor = mydb.cursor()

   #insert input data into DB
    sql = "INSERT INTO `per_details`(`e_id`, `Gender`, `Blood_Grp`, `Addr_Line_1`, `Addr_Line_2`, `State`, `City`, `PIN`) VALUES(%s,%s,%s,%s,%s,%s,%s, %s)"
    val = (eid, gender, BloodGrp, Addr_Line_1, Addr_Line_2, City, State, PIN)
    mycursor.execute(sql, val)
    mydb.commit()

    print(mycursor.rowcount, "record inserted.")
