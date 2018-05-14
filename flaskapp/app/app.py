from flask import Flask, render_template, request, redirect,url_for
from flaskext.mysql import MySQL
from flask_bcrypt import Bcrypt


#Configuration variables
app = Flask(__name__)
bcrypt = Bcrypt(app)
mysql = MySQL()
mysql.init_app(app)
app.config['MYSQL_DATABASE_USER'] = 'flask_user'
app.config['MYSQL_DATABASE_PASSWORD'] = 'P@ssw0rd12!'
app.config['MYSQL_DATABASE_DB'] = 'flaskDB'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

#Main route
@app.route('/', methods=['GET', 'POST'])
def main():

    return render_template('login.html')

#Registration route
@app.route('/register', methods=['GET', 'POST'])
def register():
    return render_template('register.html')

#Route to store data input from registration.
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

    #test length to ensure password > 8 and store values.
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


#Route to handle authentication from login page.
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
    past = pcursor.fetchone()[0]
    test = bcrypt.check_password_hash(past,password)


    if user != None :
        if test == True:
            return redirect(url_for("index"))
        else:
            error = 'Incorrect username or password'
            return render_template('login.html', error=error)
    else:
        error = 'Incorrect username or password'
        return render_template('login.html', error=error)


#Route for password reset frontend
@app.route('/reset', methods=['GET','POST'])
def reset():
    return render_template('reset.html')

#Route for performing password reset and returning to login
@app.route('/preset', methods=['GET','POST'])
def preset():
    #get username
    username = str(request.form['username'])
    cursor = mysql.get_db().cursor()
    cursor.execute("SELECT username from flaskDB.users \
    where username='"+ username +"'" )
    user = cursor.fetchone()

    #get email
    email = str(request.form['email'])
    cursor = mysql.get_db().cursor()
    cursor.execute("SELECT email from flaskDB.users \
    where email='"+ email +"'" )
    eml = cursor.fetchone()

    #get secreta
    secreta = str(request.form['secreta'])
    cursor = mysql.get_db().cursor()
    cursor.execute("SELECT secreta from flaskDB.users \
    where secreta='"+ secreta +"'" )
    scrt = cursor.fetchone()

    #Get password and confirm from Form, hash password.
    password = str(request.form['password'])
    confirm = str(request.form['confirm'])
    pw_hash = bcrypt.generate_password_hash(password).decode('utf-8')

    #Validate form data and update password if successful
    if password == confirm:
        if user != None :
            if len(password) >= 8:
                if eml != None:
                    if scrt != None:
                        cursor = mysql.get_db().cursor()
                        cursor.execute("UPDATE flaskDB.users SET password = '"+ pw_hash + "'\
                        where username='"+ username +"'")
                        mysql.get_db().commit()
                        return redirect(url_for("main"))

                    else:
                        error='Secret answer does not match'
                        return render_template('reset.html', error=error)
                else:
                    error='Email address not found'
                    return render_template('reset.html', error=error)

            else:
                error='Password must be at least 8 characters long'
                return render_template('reset.html', error=error)
        else:
            error='No user found with that name'
            return render_template('reset.html', error=error)
    else:
        error='Passwords do not match'
        return render_template('reset.html', error=error)


#Route to search frontend
@app.route('/index', methods=['GET','POST'])
def index():
    return render_template('index.html')


#Route to query database and return results.
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
    cri_cursor.execute("SELECT county,year,violent,property,murder,rape, \
    robbery,assault,burglary,larceny,vehicle,arson \
    from flaskDB.crime where state='"+ state +"' OR county='"+ county +"' \
    OR city='"+ city +"'")
    cri = cri_cursor.fetchall()

    #Jobs connector and query.
    job_cursor = mysql.get_db().cursor()
    job_cursor.execute("SELECT title,company,city,description,hyperlink \
    from flaskDB.jobs where state='"+ state +"' OR county='"+ county +"' \
    OR city='"+ city +"'")
    job = job_cursor.fetchall()

    #Homes connector and query.
    home_cursor = mysql.get_db().cursor()
    home_cursor.execute("SELECT photo,address,state,county,city,zip,price,bedrooms,bathrooms,sqfeet,link \
    from flaskDB.homes where state='"+ state +"' OR county='"+ county +"' \
    OR city='"+ city +"'")
    home = home_cursor.fetchall()


    #Render results template, pass results of queries
    return render_template('results.html', job=job, cri=cri,sch=sch,home=home)


@app.route('/logout')
def logout():
    error = 'You have been successfully logged out'
    return redirect(url_for('main', error=error))


if __name__ == "__main__":
	app.run(debug=True)
