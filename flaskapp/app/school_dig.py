import requests, json

# API endpoints
url_schools = 'https://api.schooldigger.com/v1.1/schools'

#API authentication
app_id = '7ce696c6'
app_key = '82e46c96acc3ae531c8ee9c8d920dea1'

# Parameters for schools endpoint.
schools_params = dict(
    appID = app_id,
    appKey = app_key,
    st = 'NC',
    zip = '28376',
    level = 'Elementary')

# Test response code and get JSON data, HTTP error on failure.
response = requests.get(url_schools, schools_params)

if response.status_code == 200:
    jdata = response.json()
    numSchools = jdata['numberOfSchools']


    #School Data
    school_list = jdata['schoolList']
    school_dict = school_list[0]
    school_name = school_dict['schoolName']
    rank_list = school_dict['rankHistory']
    rank_dict = rank_list[0]
    rank = rank_dict['rank']

    #Student Data
    student_list = school_dict['schoolYearlyDetails']
    student_dict = student_list[0]
    pupil_teach = student_dict['pupilTeacherRatio']
    teach_full = student_dict['teachersFulltime']
    num_students = student_dict['numberOfStudents']


    #Print statements for testing variables.
    #print('pupilToTeacher: ', pupil_teach)
    #print('fullTimeTeachers: ',teach_full)
    #print('numberOfStudents: ',num_students)
    #print('numberOfSchools: ', numSchools)
    #print('school name: ', school_name)
    #print('school rank: ',rank)
    print(jdata)



else:
    print("HTTP error",response.status_code)
