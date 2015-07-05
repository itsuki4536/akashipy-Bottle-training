from bottle import route, run, template, request
import requests

@route('/')
def home():
    return template('home', home=home)

@route('/events')
def events():
    r = requests.get('http://connpass.com/api/v1/event/?keyword=' + request.query.keyword)
    events = r.json()['events']
    return template('events', events=events)

from os import environ
if environ.get("IS_HEROKU"):
    run(server='gunicorn', host='0.0.0.0', port=int(environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True, reloader=True)
