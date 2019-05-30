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
    val = (eid, gender, BloodGrp, Addr_Line_1, Addr_Line_2,  State, City, PIN)
    mycursor.execute(sql, val)
    mydb.commit()
    mydb.close()
#using Below function  we are checking  duplicatete employee Id if duplicate entry is present then returning list of tuples values.
def dup_check(eid):
    mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="vasuvasu",
            database="hrms"
        )
    mycursor = mydb.cursor()
    sql = "SELECT `e_id` FROM `per_details` WHERE `e_id` =" + str(eid)
    mycursor.execute(sql)
    x = mycursor.fetchone()
    mydb.close()
    return x
