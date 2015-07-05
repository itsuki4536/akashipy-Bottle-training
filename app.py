from bottle import route, run, template
import requests

@route('/events')
def events():
    r = requests.get('http://connpass.com/api/v1/event/?keyword=akashi')
    event = r.json()['events'][0]

    return template('events', event=event)


run(host='localhost', port=8080, debug=True, reloader=True)
