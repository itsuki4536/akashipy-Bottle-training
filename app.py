from bottle import route, run, template
import requests

@route('/events')
def events():
    r = requests.get('http://connpass.com/api/v1/event/?keyword=akashi')
    events = r.json()['events']

    return template('events', events=events)


run(host='localhost', port=8080, debug=True, reloader=True)
