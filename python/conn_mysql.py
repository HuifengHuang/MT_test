import mysql.connector
from mysql.connector import pooling
from mysql.connector import Error
import threading


class MySQLDatabase:
    _instance = None
    _lock = threading.Lock()

    def __new__(cls, *args, **kwargs):
        if not cls._instance:
            with cls._lock:
                if not cls._instance:
                    cls._instance = super().__new__(cls)
                    cls._instance._initialized = False
        return cls._instance

    def __init__(self, host='localhost', user='root', password='Kzy186424', database='mt', pool_size=5):
        if not self._initialized:
            self.host = host
            self.user = user
            self.password = password
            self.database = database
            self.pool_size = pool_size
            self.connection_pool = None
            self._initialized = True
            self._create_connection_pool()

    def _create_connection_pool(self):
        try:
            self.connection_pool = pooling.MySQLConnectionPool(
                pool_name="mypool",
                pool_size=self.pool_size,
                host=self.host,
                user=self.user,
                password=self.password,
                database=self.database
            )
            print("MySQL连接池创建成功")
        except Error as e:
            print(f"创建MySQL连接池失败: {e}")
            raise

    def get_connection(self):
        try:
            if self.connection_pool is None:
                self._create_connection_pool()
            return self.connection_pool.get_connection()
        except Error as e:
            print(f"获取数据库连接失败: {e}")
            raise

    def execute_query(self, query, params=None, fetch_one=False):
        connection = None
        cursor = None
        try:
            connection = self.get_connection()
            cursor = connection.cursor(dictionary=True)

            cursor.execute(query, params or ())

            if query.strip().lower().startswith('select'):
                if fetch_one:
                    result = cursor.fetchone()
                else:
                    result = cursor.fetchall()
                return result
            else:
                connection.commit()
                return cursor.rowcount

        except Error as e:
            if connection:
                connection.rollback()
            print(f"数据库操作失败: {e}")
            raise
        finally:
            if cursor:
                cursor.close()
            if connection:
                connection.close()

    def close_all_connections(self):
        if self.connection_pool:
            self.connection_pool.close()
            print("所有数据库连接已关闭")


# 使用示例
if __name__ == "__main__":
    # 初始化数据库连接 (只需要一次)
    db = MySQLDatabase()

    # 执行普通查询
    users = db.execute_query("SELECT username FROM user_info WHERE username='康梓瑶' ")
    print(users)

    # 关闭所有连接 (通常在程序退出时调用)
    # db.close_all_connections()
