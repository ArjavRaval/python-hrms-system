from flask import Flask, render_template, redirect, url_for, request
import INSERT_Values_DB

app = Flask(__name__)


@app.route('/')
def render_static():
    return render_template('Personal_Details.html')


@app.route('/insert', methods=['POST'])
def insert():
    if request.method == 'POST':
        ######
        eid = request.form['EID']
        gender = request.form['gender']
        BloodGrp = request.form["bldgrp"]
        Addr_Line_1 = request.form['Addr_Line_1']
        Addr_Line_2 = request.form['Addr_Line_2']
        City = request.form['City']
        State = request.form['State']
        PIN = request.form['PIN']
        INSERT_Values_DB.insertValues(eid, gender, BloodGrp, Addr_Line_1, Addr_Line_2, City, State, PIN)
        ######
        return render_template('Personal_Details.html')
    else:
        return "Nothing"


if __name__ == '__main__':
    app.run()
