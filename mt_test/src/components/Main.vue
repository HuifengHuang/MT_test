<template>
  <div class="main-container">
    <!-- 顶部标题栏 -->
    <header class="header">
      <h1>欢迎用户使用系统</h1>
    </header>

    <!-- 主体内容区 -->
    <main class="content-area">
      <!-- 三个并排的方块 -->
      <div 
        v-for="(panel, index) in panels" 
        :key="index" 
        class="panel-square"
      >
        <div class="panel-content">
          <h2>{{ panel.title }}</h2>
          <p>{{ panel.description }}</p>
        </div>
        <div class="panel-blocks">
          <div class="panel-block" @click="handleClick(panel.title, panel.train, 'train')">
            <h3>训练任务</h3>
            <img class="finish-img" src="../assets/finish.png" v-if="panel.train==='completed'" />
          </div>
          <div class="panel-block" @click="handleClick(panel.title, panel.test, 'test')">
            <h3>测试任务</h3>
            <img class="finish-img" src="../assets/finish.png" v-if="panel.test==='completed'" />
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
import axios from 'axios';
import { ElNotification } from 'element-plus';

export default {
  name: 'MainPage',
  data() {
    return {
      panels: [
        {
          title: 'cub5',
          description: '任务描述内容',
          train: 'incompleted',
          test: 'incompleted',
        },
        {
          title: 'cub10',
          description: '任务描述内容',
          train: 'incompleted',
          test: 'incompleted',
        },
        {
          title: 'cub15',
          description: '任务描述内容',
          train: 'incompleted',
          test: 'incompleted',
        }
      ],
      user_Id: this.$route.query.userId,
      username: this.$route.query.username,
    }
  },
  created(){
    this.init();
  },
  methods: {
    init(){
        axios.post('http://localhost:5000/user_tasks', {
          user_id: this.user_Id,
        })
        .then(response => {
            let resp = response.data;
            console.log(resp);
            for(let i=0;i<resp.length;i++){
              for(let j=0;j<this.panels.length;j++){
                if(resp[i]['title']==this.panels[j]['title']){
                  this.panels[j][resp[i]['mode']] = 'completed';
                  break;
                }
              }
            }
        });
    },
    handleClick(title, status, mode) {
      if (status === 'completed'){
        ElNotification({
          title: '提示',
          message: '该任务已完成',
          type: 'primary',
        });
        return;
      }
      else{
        this.$router.push({
        path: "/practice", 
        query: { userId: this.user_Id ,username: this.username, mode: mode, title: title}
        });
      }
    }
  }
}
</script>

<style scoped>
/* 全局样式 - 确保无滚动条 */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body, #app {
  height: 100%;
  width: 100%;
  overflow: hidden;
}

.main-container {
  display: flex;
  flex-direction: column;
  height: 100vh;
  width: 100vw;
  overflow: hidden;
  font-family: 'Arial', sans-serif;
}

/* 顶部标题栏样式 */
.header {
  background-color: #409eff;
  color: white;
  padding: 15px;
  text-align: center;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.header h1 {
  font-size: 20px;
  font-weight: 500;
  margin: 0;
}

/* 主体内容区样式 */
.content-area {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 15px;
  gap: 15px;
  background-color: #f5f7fa;
}

/* 方块面板样式 */
.panel-square {
  width: 300px;
  height: 300px;
  display: flex;
  flex-direction: column;
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  justify-content: space-between;
}

.panel-content {
  padding: 15px;
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.panel-blocks {
  padding: 15px;
  flex: 1;
  display: flex;
  justify-content: space-between;
  align-content: center;
}

.panel-block {
  margin: 10px;
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color:rgb(235, 230, 230);
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  cursor: pointer;
}

.panel-content h2 {
  color: #333;
  margin-bottom: 10px;
  font-size: 16px;
  text-align: center;
}

.panel-content p {
  color: #666;
  font-size: 14px;
  text-align: center;
  margin: 0;
}

/* 状态栏样式 */
/* .status-bar {
  padding: 8px;
  text-align: center;
  font-weight: bold;
  font-size: 12px;
  color: white;
}

.status-bar.已完成 {
  background-color: #67c23a;
}

.status-bar.未完成 {
  background-color: #f56c6c;
} */

.finish-img {
  margin-left: 5px;
  width: 25px;
  height: 25px;
}

/* 响应式设计 */
@media (max-width: 768px) {
  .content-area {
    flex-direction: column;
  }
  
  .panel-square {
    width: 180px;
    height: 180px;
  }
}
</style>