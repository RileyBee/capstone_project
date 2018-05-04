from flask import Flask, render_template, request, redirect,url_for
from flaskext.mysql import MySQL
from flask_bcrypt import Bcrypt


app = Flask(__name__)
bcrypt = Bcrypt(app)
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
    firstname = str(request.form['firstname'])
    lastname = str(request.form['lastname'])
    username = str(request.form['username'])
    password = str(request.form['password'])
    pw_hash = bcrypt.generate_password_hash(password).decode('utf-8')
    email = str(request.form['email'])
    secreta = str(request.form['secreta'])
    secretq= str(request.form['secretq'])

    #test length to ensure password > 8
    if len(password) >= 8:
        cursor = mysql.get_db().cursor()
        cursor.execute("INSERT INTO users (firstname,lastname,username,password,email,secreta,secretq) \
        VALUES(%s,%s,%s,%s,%s,%s,%s)",(firstname,lastname,username,pw_hash,email,secreta,secretq))
        mysql.get_db().commit()
        if request.method == 'POST':
            return redirect(url_for("main"))
    else:
        error = 'Passwords must be at least 8 characters'
        return render_template('register.html', error=error)




@app.route('/authenticate', methods=['GET','POST'])
def authenticate():
    #get username
    username = str(request.form['username'])
    cursor = mysql.get_db().cursor()
    cursor.execute("SELECT username from flaskDB.users \
    where username='"+ username +"'" )
    user = cursor.fetchone()
    #get password
    password = str(request.form['password'])
    pcursor = mysql.get_db().cursor()
    pcursor.execute("SELECT password from flaskDB.users \
    where username='"+ username +"'" )
    past = pcursor.fetchone()
    pas = past[0]
    test = bcrypt.check_password_hash(pas,password)


    try:
        if len(user) is 1:
            if test == True:
                return redirect(url_for("index"))
            else:
                error = 'Incorrect username or password', type(pas)
                return render_template('login.html', error=error)
        else:
            error = 'Incorrect username or password'
            return render_template('login.html', error=error)



    except:
        error = 'Incorrect username or password'
        return render_template('login.html', error=error)


@app.route('/index', methods=['GET','POST'])
def index():
    return render_template('index.html')

@app.route('/reset', methods=['GET','POST'])
def reset():
    return render_template('reset.html')

@app.route('/preset', methods=['GET','POST'])
def preset():
    return render_template('preset.html')

@app.route('/search', methods=['GET','POST'])
def search():
    #Form data retrieved from index
    state = str(request.form['state'])
    county = str(request.form['county'])
    city = str(request.form['city'])


    #School connector and query.
    sch_cursor = mysql.get_db().cursor()
    sch_cursor.execute("SELECT school_name,county,city, \
    num_students,school_rank,student_ratio,test_scores,address \
    from flaskDB.schools where state='"+ state +"' OR county='"+ county +"' \
    OR city='"+ city +"'")
    sch = sch_cursor.fetchall()

    #Crime connector and query.
    cri_cursor = mysql.get_db().cursor()
    cri_cursor.execute("SELECT year,violent,property,murder,rape, \
    robbery,assault,burglary,larceny,vehicle,arson \
    from flaskDB.crime where state='"+ state +"' OR county='"+ county +"'")
    cri = cri_cursor.fetchall()

    #Jobs connector and query.
    job_cursor = mysql.get_db().cursor()
    job_cursor.execute("SELECT title,company,location,description,hyperlink \
    from flaskDB.jobs where state='"+ state +"' OR county='"+ county +"'")
    job = job_cursor.fetchall()




    #render results template, pass results of queries
    return render_template('results.html', job=job, cri=cri,sch=sch)


if __name__ == "__main__":
	app.run(debug=True)
