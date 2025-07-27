import io
import json
import os

from flask import Flask, jsonify, Response, request, send_file

from flask_cors import CORS
from conn_mysql import MySQLDatabase

app = Flask(__name__)
CORS(app, resources=r'/*')

db = MySQLDatabase()


@app.route('/login', methods=['POST'])
def login():
    req = request.get_json()
    username = req['name']
    age = req['age']
    user_info = db.execute_query("SELECT * FROM user_info WHERE username='" + username + "' ")
    if len(user_info) == 0:
        db.execute_query("INSERT INTO user_info (username, age) VALUES ('" + username + "', '" + age + "')")
    user_info = db.execute_query("SELECT * FROM user_info WHERE username='" + username + "' ")
    print(user_info)
    return user_info


@app.route('/question_num', methods=['POST'])
def question_num():
    req = request.get_json()
    mode = req['mode']
    title = req['title']
    test_info = db.execute_query("SELECT * FROM test_info WHERE mode='" + mode + "'  AND title='" + title + "'")
    print(test_info)
    return test_info


if __name__ == '__main__':
    app.run()
