import mysql.connector


def insert(ab, cd, ef, gh):
    mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="",
      database="newtest"
    )
    mycursor = mydb.cursor()

    sql = "INSERT INTO `attendance`(`e_id`, `Date`, `Punch_In`, `Punch_Out`) VALUES (%s, %s, %s, %s)"
    val = (ab, cd, ef, gh)

    mycursor.execute(sql, val)
    mydb.commit()

#print(mycursor.rowcount, "record inserted.")