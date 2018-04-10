from flask import Flask, render_template, request, redirect,url_for
from flaskext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()
mysql.init_app(app)
app.config['MYSQL_DATABASE_USER'] = 'flask_user'
app.config['MYSQL_DATABASE_PASSWORD'] = 'P@ssw0rd12!'
app.config['MYSQL_DATABASE_DB'] = 'flaskDB'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'


@app.route('/', methods=['GET', 'POST'])
def main():
    return render_template('login.html')

@app.route('/register', methods=['GET', 'POST'])
def register():
    return render_template('register.html')

@app.route('/signup', methods=['GET','POST'])
def signup():
    username = str(request.form['username'])
    password = str(request.form['password'])
    email = str(request.form['email'])
    cursor = mysql.get_db().cursor()
    cursor.execute("INSERT INTO users (username,password,email)VALUES(%s,%s,%s)",(username,password,email))
    mysql.get_db().commit()
    if request.method == 'POST':
        return redirect(url_for("index"))


@app.route('/authenticate', methods=['GET','POST'])
def authenticate():
    username = str(request.form['username'])
    password = str(request.form['password'])
    cursor = mysql.get_db().cursor()
    cursor.execute("SELECT username from flaskDB.users where username='"+ username +"'" )
    user = cursor.fetchone()
    pcursor = mysql.get_db().cursor()
    pcursor.execute("SELECT password from flaskDB.users where password='"+ password +"'" )
    pas = pcursor.fetchone()

    if len(user) is 1:
        if len(pas) is 1:
            return redirect(url_for("index"))

    else:
        return redirect(url_for("register"))

@app.route('/index')
def index():
    return render_template('index.html')


if __name__ == "__main__":
	app.run(debug=True)
