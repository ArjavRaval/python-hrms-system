from flask import Flask
from flask import Flask, flash, redirect, render_template, request, session, abort
import os

app = Flask(__name__)

@app.route('/')
def home():
	if not session.get('logged_in'):
		return render_template('loginTest.html')
	else:
		return render_template('logout.html')

@app.route('/login', methods=['POST','GET'])
def do_admin_login():
        if request.method == 'GET':
                return home()
        else:
                if request.form['s1'] == 'Log in':
                        if request.form['password'] == 'password' and request.form['username'] == 'admin':
                                session['logged_in'] = True
                                return render_template('logout.html')
                        else:
                                flash('wrong password!')
                                #session['logged_in'] = False
                                return home()

@app.route('/logout', methods=['POST'])
def do_admin_logout():
    if request.form['s1'] == 'Log out':
        session['logged_in'] = False
        return home()
    
if __name__ == "__main__":
	app.secret_key = os.urandom(12)
	app.run(debug=True,host='0.0.0.0', port=4000)
