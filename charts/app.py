from flask import Flask, Markup, render_template
import mysql.connector

app = Flask(__name__)

e_ID=str(1000133)
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="hrms"
)
mycursor = mydb.cursor()

mycursor.execute("SELECT `Date`FROM `"+e_ID+"` WHERE 1")
labels=mycursor.fetchall()
#print(len(labels))

mycursor.execute("SELECT `Duration`FROM `"+e_ID+"` WHERE 1")
bar_values1=[]
values=(mycursor.fetchall())


@app.route('/bar')
def bar():
    bar_labels = []
    bar_values = []
    for i in range(0,len(labels)):
        bar_labels.append(labels[i][0])
    #print(bar_labels)
    for i in range(0,len(values)):
        bar_values.append(values[i][0])
    #print(bar_values)
    return render_template('bar_chart.html', title='Working hour plot', max=24, labels=bar_labels, values=bar_values)

@app.route('/line')
def line():
    line_labels = []
    for i in range(0,len(labels)):
        line_labels.append(labels[i][0])
    line_values=values
    return render_template('line_chart.html', title='Working hour plot', max=24, labels=line_labels, values=line_values)

if __name__ == '__main__':
    app.run(debug=True)
