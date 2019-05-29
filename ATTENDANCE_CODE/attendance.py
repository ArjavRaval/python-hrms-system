from flask import Flask, render_template, request
import inset

app = Flask(__name__)
@app.route('/')
def index():
    return render_template('atten.html')


@app.route('/getvalue1', methods=["POST"])
def getvalue():
    ab = request.form['e_id']
    cd = request.form['Date']
    ef = request.form['Punch_In']
    gh = request.form['Punch_Out']
    inset.insert(ab, cd, ef, gh)
    return render_template('atten.html')

if __name__ == "__main__":
    app.run(debug=True)
