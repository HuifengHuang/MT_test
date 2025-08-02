import json
from conn_mysql import MySQLDatabase


def create_json(json_path):
    db = MySQLDatabase()
    results = db.execute_query("SELECT class_name FROM test_dataset")
    class_set = set()
    for result in results:
        class_set.add(result['class_name'])
    list_class = []
    for class_name in class_set:
        list_class.append({
            "english_name": class_name,
            "chinese_name": ""
        })

    # 写入JSON文件
    with open(json_path, 'w', encoding='utf-8') as f:
        json.dump(list_class, f, ensure_ascii=False, indent=4)


def update_chinese_name(json_path):
    with open(json_path, 'r', encoding='utf-8') as f:
        datas = json.load(f)
    db = MySQLDatabase()
    results = db.execute_query("SELECT test_id, class_name FROM test_dataset")
    print(results)
    new_list = []
    for result in results:
        for data in datas:
            if result['class_name'] == data['english_name']:
                new_list.append({
                    'test_id': result['test_id'],
                    'chinese_name': data['chinese_name']
                })
                break
    print(new_list)
    for item in new_list:
        db.execute_query("UPDATE test_dataset SET chinese_name = '"+item['chinese_name']+"' WHERE test_id='" + str(item['test_id']) + "' ")


if __name__ == '__main__':
    # create_json('./class_name_en_zh.json')
    update_chinese_name('./class_name_en_zh.json')
