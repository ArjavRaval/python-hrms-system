from flask import Flask
from flask import Flask, flash, redirect, render_template, request, session, abort
import os

e_ID=0

""" Get and Post using SQL Querries """
import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="HRMS"
)
mycursor = mydb.cursor()
mydb.commit()
app = Flask(__name__)

@app.route('/')
def home():
	if not session.get('logged_in'):
		return render_template('login.html')
	else:
		return "Hello Boss!"

@app.route('/login', methods=['POST'])
def do_admin_login():
        
        e_ID = request.form['username']
        sql = "SELECT `Password` FROM `Admin_login_creds` WHERE `e_ID` = "+ str(e_ID)
        mycursor.execute(sql)
        password_from_db=mycursor.fetchone()
          
        if password_from_db is None :
                flash("Wrong credentials!! ","danger")
                flash(" Invalid username !!","danger")
                return render_template('login.html')
        if (request.form['password'] == str(password_from_db[0])) :
                session['logged_in'] = True
                return render_template('protected.html')
        else:
                flash("Wrong credentials!! ","danger")
                flash(" Invalid password!!","danger")
                return render_template('login.html')
        
@app.route('/logout')
def dropsession():
    session.clear()
    return render_template('login.html')

        
if __name__ == "__main__":
	app.secret_key = os.urandom(12)
	app.run()
