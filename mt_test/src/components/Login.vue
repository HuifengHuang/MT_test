<template>
  <div class="login-wrapper">
    <div class="login-container">
      <div class="login-box">
        <h1 class="login-title">用户登录</h1>
        <form @submit.prevent="handleLogin" class="login-form">
          <div class="form-group">
            <label for="name">姓名</label>
            <input
              type="text"
              id="name"
              v-model="name"
              placeholder="请输入姓名"
              required
            />
          </div>
          <div class="form-group">
            <label for="age">年龄</label>
            <input
              type="text"
              id="age"
              v-model="age"
              placeholder="请输入年龄"
              required
            />
          </div>
          <button type="submit" class="login-button">登录</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'LoginPage',
  data() {
    return {
      name: '',
      age:''
    }
  },
  methods: {
    handleLogin() {
        axios.post('http://localhost:5000/login', {
            "name": this.name,
            "age": this.age
        })
        .then(response => {
            let resp = response.data[0];
            console.log(resp['user_id']);
            this.$router.push({
                path: "/main", 
                query: { userId: resp['user_id'] , username: resp['username']}
            });

        });
    }
  }
}
</script>

<style scoped>
/* 全局样式重置 - 确保无滚动条 */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body, #app {
  height: 100%;
  width: 100%;
  overflow: hidden; /* 关键：完全禁用滚动 */
}

.login-wrapper {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  overflow: hidden;
  background-color: #f5f5f5;
}

.login-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
  width: 100%;
}

.login-box {
  width: 400px;
  padding: 40px;
  background: #fff;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  text-align: center;
}

.login-title {
  margin-bottom: 30px;
  color: #333;
  font-size: 24px;
}

.login-form {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.form-group {
  display: flex;
  flex-direction: column;
  text-align: left;
}

.form-group label {
  margin-bottom: 8px;
  font-weight: 500;
  color: #555;
}

.form-group input {
  padding: 12px 15px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 16px;
  transition: border-color 0.3s;
}

.form-group input:focus {
  border-color: #409eff;
  outline: none;
}

.login-button {
  padding: 12px;
  background-color: #409eff;
  color: white;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.login-button:hover {
  background-color: #66b1ff;
}
</style>