from flask import Flask, render_template, redirect, url_for, request
import INSERT
app = Flask(__name__)

@app.route('/')
def render_static():
    return render_template('bleh2.html')

@app.route('/insert',methods = ['POST'])
def insert():
   if request.method == 'POST':
      eid = request.form['e_id']
      ename = request.form['e_name']
      email = request.form['e_email']
      edep = request.form['e_dep']
      ephone = request.form['e_ph']
      edoj = request.form['e_doj']
      edes = request.form['e_des']
      INSERT.insert_entry(eid,ename,email,edoj,edes,ephone,edep)
      return "Success"
   else:
      return "Nothing"


if __name__ == '__main__':
    app.run()
