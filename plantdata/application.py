#!flask/bin/python
import json
import os
from flask import Flask, request, Response, render_template, redirect, url_for, session
import db
from db_functions import do_login, get_plantdata, get_averagetemp, get_averagehumidity, get_averageyield, get_averages,get_nutrients, analyzeyield, updatetemp
import optparse

application = Flask(__name__, instance_relative_config=True)
application.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(application.instance_path, 'chome.sqlite'),
    )
# ensure the instance folder exists
try:
    os.makedirs(application.instance_path)
except OSError:
    pass
db.init_app(application)

@application.route('/', methods=['POST', 'GET'])
def main():
    page = render_template('chome_base.html.jinja')
    return Response(page, status=200)

@application.route('/main', methods=['POST', 'GET'])
def login():
    error = None
    uname = None
    password = None
    if request.method == 'POST':
        uname = request.form['uname']
        password = request.form['pass']
    else:
        uname = request.args.get['uname']
        password = request.args.get['pass']
    
    page = None
    if uname is not None and password is not None:
        login = do_login(uname, password)
    else:
        login = False
    if login:
        plantdata = get_plantdata()
        averages = get_averages()
        max = get_nutrients("max")
        page = render_template('main_page.html.jinja', user=uname, plantdata=plantdata,averages = averages,max = max)
    else:
        error = 'Incorrect login'
        page = render_template('chome_base.html.jinja', error=error)
    return Response(page, status=200)

@application.route('/yield', methods=['POST', 'GET'])
def predictyield():
    yieldtrend = analyzeyield()
    page = render_template('yield.html.jinja',yieldtrend=yieldtrend)
    return Response(page, status=200)

@application.route('/settemp', methods = ['POST'])
def settemp():
    temp = None
    if request.method == 'POST':
        temp = request.form['temp']
    updatetemp(temp)


@application.route('/logout', methods=['POST', 'GET'])
def logout():
    session.clear()
    return redirect('/')

if __name__ == '__main__':
    default_port = "8080"
    default_host = "0.0.0.0"
    parser = optparse.OptionParser()
    parser.add_option("-H", "--host",
                      help=f"Hostname of Flask app {default_host}.",
                      default=default_host)

    parser.add_option("-P", "--port",
                      help=f"Port for Flask app {default_port}.",
                      default=default_port)

    parser.add_option("-d", "--debug",
                      action="store_true", dest="debug",
                      help=optparse.SUPPRESS_HELP)

    options, _ = parser.parse_args()

    application.run(
        debug=options.debug,
        host=options.host,
        port=int(options.port)
    )