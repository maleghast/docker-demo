from bottle import route, run, template

@route('/example')
def index():
    return template('<b>This is an example {{lang}} application running in a Docker Container</b>', lang='Python')

run(host='localhost', port=8080)

