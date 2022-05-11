import sqlite3
from flask import session
from db import get_db

def do_login(uname: str, password: str) -> bool:
    loginsuccess = False
    mydb = get_db()
    print("searching for {}".format(uname))
    user = mydb.execute('SELECT * FROM users WHERE username = ?', (uname,)).fetchone()
    if user is not None:
        print("found {}".format(user))
        if user['upassword'] == password:
            loginsuccess = True
            session.clear()
            session['user_id'] = user['id']
            session['uname'] = user['username']
    return loginsuccess

def updatetemp(val):
    mydb = get_db()
    uid = session['user_id']
    mydb.execute('UPDATE greenhousedata SET temp = ?'(val,))

def get_plantdata() -> dict:
    plantdata = {}
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT recordtime, yield,temperature,humidity, nutrients, co2,moisture, light FROM greenhousedata'):
        plantdata[row[0]] = [row[1], row[2], row[3],row[4],row[5],row[6],row[7]]


    return plantdata

def get_averagenutrients() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT nutrients FROM greenhousedata'):
        total = total + row[0]
        counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_nutrients(x: str) -> float:
    max = 0.0
    val = 0.0
    min = 100000000.0
    uid = session['user_id']
    mydb = get_db()
    if x == "max":
        for row in mydb.execute('SELECT nutrients FROM greenhousedata'):
            if float(row[0]) > max:
                val = row[0]
                max = val
    if x == "min":
        for row in mydb.execute('SELECT nutrients FROM greenhousedata'):
            if float(row[0]) < min:
                val = row[0]
                min = val
    return val


def get_averageco2() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT co2 FROM greenhousedata'):
        total = total + row[0]
        counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_co2(x: str) -> float:
    max = 0.0
    val = 0.0
    min = 100000000.0
    uid = session['user_id']
    mydb = get_db()
    if x == "max":
        for row in mydb.execute('SELECT co2 FROM greenhousedata'):
            if float(row[0]) > max:
                val = row[0]
                max = val
    if x == "min":
        for row in mydb.execute('SELECT co2 FROM greenhousedata'):
            if float(row[0]) < min:
                val = row[0]
                min = val
    return val

def get_averagelight() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT light FROM greenhousedata'):
        total = total + row[0]
        counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_light(x: str) -> float:
    max = 0.0
    val = 0.0
    min = 100000000.0
    uid = session['user_id']
    mydb = get_db()
    if x == "max":
        for row in mydb.execute('SELECT light FROM greenhousedata'):
            if float(row[0]) > max:
                val = row[0]
                max = val
    if x == "min":
        for row in mydb.execute('SELECT light FROM greenhousedata'):
            if float(row[0]) < min:
                val = row[0]
                min = val
    return val


def get_averagemoisture() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT moisture FROM greenhousedata'):
        total = total + row[0]
        counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_moisture(x: str) -> float:
    max = 0.0
    val = 0.0
    min = 100000000.0
    uid = session['user_id']
    mydb = get_db()
    if x == "max":
        for row in mydb.execute('SELECT moisture FROM greenhousedata'):
            if float(row[0]) > max:
                val = row[0]
                max = val
    if x == "min":
        for row in mydb.execute('SELECT moisture FROM greenhousedata'):
            if float(row[0]) < min:
                val = row[0]
                min = val
    return val

def get_averagetemp() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT temperature FROM greenhousedata'):
        total = total + row[0]
        counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_temp(x: str) -> float:
    max = 0.0
    val = 0.0
    min = 100000000.0
    uid = session['user_id']
    mydb = get_db()
    if x == "max":
        for row in mydb.execute('SELECT temperature FROM greenhousedata'):
            if float(row[0]) > max:
                val = row[0]
                max = val
    if x == "min":
        for row in mydb.execute('SELECT temperature FROM greenhousedata'):
            if float(row[0]) < min:
                val = row[0]
                min = val
    return val


def get_averagehumidity() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT humidity FROM greenhousedata',):
        total = total + int(row[0])
        counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_humidity(x: str) -> float:
    max = 0.0
    val = 0.0
    min = 100000000.0
    uid = session['user_id']
    mydb = get_db()
    if x == "max":
        for row in mydb.execute('SELECT humidity FROM greenhousedata'):
            if float(row[0]) > max:
                val = row[0]
                max = val
    if x == "min":
        for row in mydb.execute('SELECT humidity FROM greenhousedata'):
            if float(row[0]) < min:
                val = row[0]
                min = val
    return val


def get_averageyield() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT yield FROM greenhousedata'):
        if row[0] != 0.0:
            total = total + row[0]
            counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_yield(x: str) -> float:
    max = 0.0
    val = 0.0
    min = 100000000.0
    uid = session['user_id']
    mydb = get_db()
    if x == "max":
        for row in mydb.execute('SELECT yield FROM greenhousedata'):
            if (float(row[0]) > max) & (row[0] != 0.0):
                val = row[0]
                max = val
    if x == "min":
        for row in mydb.execute('SELECT yield FROM greenhousedata'):
            if (float(row[0]) < min) & (row[0] != 0.0):
                val = row[0]
                min = val
    return val


def analyzeyield() -> bool:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT yield FROM greenhousedata'):
        if row[0] != 0.0:
            total = total + row[0]
            counter +=1
            last = row[0]
    average = ("{:.2f}".format(total /counter))
    if (average-last) > 0:
        return False
    else:
        return True



def get_averages() -> dict:
    average_data = {}
    average_data["temperature"] = [get_averagetemp(),get_temp("max",),get_temp("min")]
    average_data["humidity"] = [get_averagehumidity(),get_humidity("max",),get_humidity("min")]
    average_data["yield"] = [get_averageyield(),get_yield("max",),get_yield("min")]
    average_data["nutrients"] = [get_averagenutrients(),get_nutrients("max",),get_nutrients("min")]
    average_data["co2"] = [get_averageco2(),get_co2("max",),get_co2("min")]
    average_data["moisture"] = [get_averagemoisture(),get_moisture("max",),get_moisture("min")]
    average_data["light"] = [get_averagelight(),get_light("max",),get_light("min")]
    return average_data