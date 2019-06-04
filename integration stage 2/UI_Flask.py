from flask import Flask, render_template, redirect, url_for, request, flash
import INSERT_Values_DB

app = Flask(__name__)
app.secret_key = b'_vasu2L"F4Q8z\n\xec]/'


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
        x = INSERT_Values_DB.dup_check(eid)
        print(x)
        if(x!=None):
            flash("Eployee ID Alerady exist", "error")
            return render_template('Personal_Details.html')

        else:
            INSERT_Values_DB.insertValues(eid, gender, BloodGrp, Addr_Line_1, Addr_Line_2, City, State, PIN)
            flash("Data store Successefully ", "error")
            return render_template('Personal_Details.html')
        ######
        return render_template('protected.html')
    else:
        return "Nothing"

if __name__ == '__main__':
    app.run()
