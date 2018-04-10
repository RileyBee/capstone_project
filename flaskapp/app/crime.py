import requests, json

testurl = 'https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=oj9AvoHkK9Wj18GfK8H4xrekYZUnCETCrygb7FqE&location=Denver+CO'
r = 'https://api.usa.gov/crime/fbi/ucr/agencies/count/states/offenses/NY/counties/061?page=10&per_page=10&output=json&api_key=iiHnOKfno2Mgkt5AynpvPpUQTEyxE77jo1RU8PIv'

response = requests.get(r)

if response.status_code == 200:
    data = response.json()
    results = data['results']
    
    print(data)


else:
    print('oops')
