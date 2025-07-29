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


@app.route('/user_tasks', methods=['POST'])
def user_tasks():
    req = request.get_json()
    user_id = req['user_id']
    user_task = db.execute_query("SELECT * FROM test_result WHERE user_id='" + user_id + "' ")
    result = []
    for tasks in user_task:
        result.append({'title': tasks['title'], 'mode': tasks['mode']})
    print(result)
    return jsonify(result)


@app.route('/task_info', methods=['POST'])
def task_info():
    req = request.get_json()
    mode = req['mode']
    title = req['title']
    test_dataset = db.execute_query("SELECT * FROM test_dataset WHERE mode='" + mode + "'  AND title='" + title + "'")
    class_set = set()
    for data in test_dataset:
        class_set.add(data['class_name'])
    result = {'question_num': len(test_dataset), 'options': [item.replace('_', ' ') for item in list(class_set)]}
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


@app.route('/answer_record', methods=['POST'])
def answer_record():
    req = request.get_json()
    mode = req['mode']
    title = req['title']
    seq_num = req['question_id']
    is_right = req['is_right']
    if is_right:
        result = db.execute_query(
            "UPDATE test_dataset SET correct = correct + 1 WHERE mode='" + mode + "'  AND title='" + title + "' AND seq_num=" + str(seq_num))
    else:
        result = db.execute_query(
            "UPDATE test_dataset SET error = error + 1 WHERE mode='" + mode + "'  AND title='" + title + "' AND seq_num=" + str(seq_num))
    print(result)
    return jsonify(result)


@app.route('/task_record', methods=['POST'])
def task_record():
    req = request.get_json()
    user_id = req['user_id']
    username = req['username']
    mode = req['mode']
    title = req['title']
    during_time = req['during_time']
    correct = req['correct']
    error = req['error']
    result = db.execute_query(
        "INSERT INTO test_result (user_id, username, mode, title, during_time, correct, error, total) VALUES "
        "('" + user_id + "', '" + username + "', '" + mode + "', '" + title + "', '" + during_time + "', '"
        "" + str(correct) + "', '" + str(error) + "', '" + str(correct+error) + "')")
    print(result)
    return jsonify(result)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
