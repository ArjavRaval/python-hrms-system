import mysql.connector

def wrk_hrs_calc():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="vasuvasu",
        database="hrms"
    )
    mycursor = mydb.cursor()
    mydb.commit()
    mycursor.execute("SELECT `In_Time`FROM `attendance` WHERE (`Date` = CURDATE()) ")
    in_tm = mycursor.fetchall()
    mydb.commit()
    a=str(in_tm)
    print(a)

    mydb.commit()
    mycursor.execute("SELECT `Out_Time`FROM `attendance` WHERE (`Date` = CURDATE())")
    out_tm = mycursor.fetchall()
    mydb.commit()
    b=str(out_tm)
    print(b)


    if b!= "None" :
        mycursor.execute("UPDATE `attendance` SET `Work_hours`=  (`Out_Time` - `In_Time`) + `Work_hours`  WHERE `Date` = CURDATE()")
        mydb.commit()

    #mydb.close()

wrk_hrs_calc()