import mysql.connector
from flask import Flask, render_template
#conn = MySQLdb.connect("localhost","root","vasuvasu","hrms" )
#cursor = conn.cursor()
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="vasuvasu",
    database="hrms"
)
mycursor = mydb.cursor()
mydb.commit()
app = Flask(__name__)
app.secret_key = "Happy_Vasu!!!"

@app.route('/')
def example():
    e_ID = request.form['username']
    sqll = "SELECT `e_id`, `First_Name`, `Last_Name`, `per_email`, `ph_num`  FROM `org_details` WHERE 'e_id' = "  + str(e_ID)
    mycursor.execute(sqll)
    x = mycursor.fetchall()
    print(x)
    return render_template("example.html", value=x)

if __name__ == "__main__":
    app.run(debug=True)