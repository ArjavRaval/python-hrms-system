import mysql.connector
import datetime



mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="newtest"
)

mycursor = mydb.cursor()

#work_hours
mycursor.execute("SELECT `In_Time`FROM `attendance` WHERE (`Date` = CURDATE()) ")
in_tm = mycursor.fetchall()
print(in_tm[0])


mycursor.execute("SELECT `Out_Time`FROM `attendance` WHERE (`Date` = CURDATE())")
out_tm = mycursor.fetchall()
print(out_tm[0])


mycursor.execute("UPDATE `attendance` SET `Work_hours`=(`Out_Time` - `In_Time`) WHERE (`Date` = CURDATE() )")

mycursor.execute("SELECT `Work_hours` FROM `attendance` WHERE (`Date` = CURDATE() )")
wk_hr=mycursor.fetchall()
print(wk_hr[0])




#punch_hours

mycursor.execute("SELECT `Punch_In`FROM `attendance` WHERE (`Date` = CURDATE()) ")
in_tm = mycursor.fetchall()
print(in_tm[0])


mycursor.execute("SELECT `Punch_Out`FROM `attendance` WHERE (`Date` =CURDATE()) ")
out_tm = mycursor.fetchall()
print(out_tm[0])


mycursor.execute("UPDATE `attendance` SET `Punch_hours`=(`Punch_Out` - `Punch_In`) WHERE (`Date` = CURDATE() )")

mycursor.execute("SELECT `Punch_hours` FROM `attendance` WHERE (`Date` = CURDATE() )")
duration_tm = mycursor.fetchall()
print(duration_tm[0])


mydb.commit()

