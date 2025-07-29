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


@app.route('/task_info', methods=['POST'])
def task_info():
    req = request.get_json()
    mode = req['mode']
    title = req['title']
    test_info = db.execute_query("SELECT * FROM test_info WHERE mode='" + mode + "'  AND title='" + title + "'")
    test_dataset = db.execute_query("SELECT * FROM test_dataset WHERE mode='" + mode + "'  AND title='" + title + "'")
    class_set = set()
    for data in test_dataset:
        class_set.add(data['class_name'])
    result = {'question_num': test_info[0]['question_num'], 'options': [item.replace('_', ' ') for item in list(class_set)]}
    print(result)
    return jsonify(result)


@app.route('/question_image', methods=['POST'])
def question_image():
    req = request.get_json()
    mode = req['mode']
    title = req['title']
    seq_num = req['question_id']
    result = db.execute_query(
        "SELECT * FROM test_dataset WHERE mode='" + mode + "'  AND title='" + title + "' AND seq_num=" + str(seq_num))
    test_info = result[0]
    path = test_info['path']
    path = path.replace('/home/user/dataset/CUB_200_2011', '.')
    result = send_file(path, mimetype='image/jpeg')
    print(result)
    return send_file(path, mimetype='image/jpeg')


@app.route('/question_answer', methods=['POST'])
def question_answer():
    req = request.get_json()
    mode = req['mode']
    title = req['title']
    seq_num = req['question_id']
    result = db.execute_query(
        "SELECT * FROM test_dataset WHERE mode='" + mode + "'  AND title='" + title + "' AND seq_num=" + str(seq_num))
    test_info = result[0]
    result = {'answer': test_info['class_name'].replace('_', ' ')}
    print(result)
    return result


if __name__ == '__main__':
    app.run()
