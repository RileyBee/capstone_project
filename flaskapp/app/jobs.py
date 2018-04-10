import unirest


response = unirest.get("https://indeed-indeed.p.mashape.com/apisearch? \
publisher=&callback=<required>&chnl=<required>&co=<required> \
&filter=<required>&format=json&fromage=<required>&highlight=<required> \
&jt=<required>&l=austin%2C+tx&latlong=<required>&limit=<required> \
&q=java&radius=25&sort=<required>&st=<required>&start=<required> \
&useragent=<required>&userip=<required>&v=2",
  headers={
    "X-Mashape-Key": "xeAsFFJkYumshCaxDV1OkraOHusRp1QKAVMjsniuvt41siWphs",
    "Accept": "application/json"
  }
)

code = response.code
headers = response.headers
body = response.body

print(code, headers, body)
