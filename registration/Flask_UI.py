from flask import Flask, render_template, redirect, url_for, request
import INSERT
app = Flask(__name__)

@app.route('/')
def render_static():
    return render_template('registration.html')

@app.route('/insertReg',methods = ['POST'])
def insertReg():
   if request.method == 'POST':
      eid = request.form['e_id']
      efname = request.form['e_fname']
      elname = request.form['e_lname']
      pemail = request.form['e_pemail']
      oemail = request.form['e_oemail']
      edep = request.form['e_dep']
      ephone = request.form['e_ph']
      edoj = request.form['e_doj']
      edes = request.form['e_des']
      repman = request.form['e_repman']
      INSERT.insert_entry(eid,efname,elname,pemail,oemail,edoj,edes,ephone,edep,repman)
      return render_template('registration.html')
   else:
      return "Nothing"


if __name__ == '__main__':
    app.run()
