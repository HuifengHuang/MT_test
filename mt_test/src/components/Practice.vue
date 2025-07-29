<template>
  <div class="main-container">
    <!-- 顶部标题栏 -->
    <header class="header">
      <div class="header-block"><h1>Machine Teaching</h1></div>
      <h2>已用时: {{ formattedTime }}</h2>
      <div class="header-block"><el-button size="large" type="warning" @click="next_question()">Continue to Next Question</el-button></div>
    </header>
    <!-- 问题栏 -->
    <div class="div-question">
      <span>Questions Answered: {{ this.question_id }} out of {{ this.question_num }}</span>
    </div>
    <el-divider />
    <!-- 文字解释栏 -->
    <div class="div-explain">
      <span v-if="is_selected&&!is_right">You selected {{ this.selected_name }}. The correct answer is {{ this.answer }}.</span>
      <span v-if="is_right">You are right. The answer is {{ this.answer }}.</span>
    </div>
    <!-- 图片栏 -->
    <div class="div-img">
      <span v-if="is_selected">{{ this.answer }}</span>
      <el-image :src="imageUrl" fit="fill">
      </el-image>
    </div>
    <!-- 选项栏 -->
    <div class="div-buttons">
      <el-button type="primary" v-for="(answer, index) in options" :key="index" @click="select_class(answer, index)" :plain="index!=selectedIndex" >{{ answer }}</el-button>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import { ElNotification } from 'element-plus';

export default {
  name: 'PracticePage',
  data() {
    return {
      /*  上个页面传来的数据  */
      userId: this.$route.query.userId,
      username: this.$route.query.username,
      mode: this.$route.query.mode,
      title: this.$route.query.title,

      /*  时间记录  */
      startTime: 0,
      elapsedTime: 0,
      timerInterval: null,
      isRunning: false,

      /*  页面初始化数据   */
      question_id: 0,
      answer: null,
      options: [],
      question_num: 0,

      imageUrl: null,
      is_selected: false,
      selectedIndex: null,
      selected_name: null,
      is_right: false,
      total_right: 0,
      total_error: 0,
    }
  },
  created(){
    this.init();
    this.question_id = 1;
    this.get_question_image();
    this.get_question_answer();
    this.startTimer();
  },
  computed: {
    formattedTime() {
      // 将毫秒转换为 HH:MM:SS 格式
      const seconds = Math.floor(this.elapsedTime / 1000) % 60
      const minutes = Math.floor(this.elapsedTime / (1000 * 60)) % 60
      const hours = Math.floor(this.elapsedTime / (1000 * 60 * 60))
      
      return [
        hours.toString().padStart(2, '0'),
        minutes.toString().padStart(2, '0'),
        seconds.toString().padStart(2, '0')
      ].join(':')
    }
  },
  beforeUnmount() {
    // 组件销毁时释放URL对象
    if (this.imageUrl) {
      URL.revokeObjectURL(this.imageUrl);
    }
  },
  beforeRouteLeave(next) {
    // 显示确认对话框
    if (confirm('任务进行中，请勿离开。')) {
      next() // 允许导航
    } else {
      next(false) // 取消导航
    }
  },
  methods: {
    init(){
        axios.post('http://localhost:5000/task_info', {
            "mode": this.mode,
            "title": this.title
        })
        .then(response => {
            let resp = response.data;
            console.log(resp);
            this.question_num = resp['question_num'];
            this.options = resp['options'];
        });
    },
    async get_question_image(){
        try {
            axios.post('http://localhost:5000/question_image', {
                "mode": this.mode,
                "title": this.title,
                "question_id": this.question_id,
            }, {responseType: 'blob'})
            .then(response => {
                const imageBlob = new Blob([response.data], { type: 'image/jpeg' });
                this.imageUrl = URL.createObjectURL(imageBlob);
            });
        } catch (error) {
        console.error('获取图片失败:', error);
        }
    },
    get_question_answer(){
        axios.post('http://localhost:5000/question_answer', {
            "mode": this.mode,
            "title": this.title,
            "question_id": this.question_id,
        })
        .then(response => {
            let resp = response.data;
            console.log(resp);
            this.answer = resp['answer'];
        });
    },
    next_question(){
        if(this.is_selected == false){
            ElNotification({
              title: '提示',
              message: '题目未完成',
              type: 'primary',
            });
            return;
        }else if(this.question_id == this.question_num){
            this.$router.replace({
            path: "/main", 
            query: { userId: this.userId, username: this.username}
            });
            return;
        }
        this.is_selected = false;
        this.selectedIndex = null;
        this.is_right = false;
        this.question_id = Number(this.question_id) + 1;
        this.get_question_image();
        this.get_question_answer();
    },
    select_class(answer, index){
        if(this.is_selected == true)return;
        this.selectedIndex = index;
        this.selected_name = answer;
        this.is_selected = true;
        if(this.selected_name == this.answer){
            this.is_right = true;
            this.total_right += 1;
        }else this.total_error += 1;
        axios.post('http://localhost:5000/answer_record', { // 发送答案对错记录
            "mode": this.mode,
            "title": this.title,
            "question_id": this.question_id,
            "is_right": this.is_right,
        });
        if(this.question_id == this.question_num){  //完成最后一道题，停止计时，并发送任务数据记录
          this.stopTimer();
          axios.post('http://localhost:5000/task_record', {
            "user_id": this.userId,
            "username": this.username,
            "mode": this.mode,
            "title": this.title,
            "during_time": this.formattedTime,
            "correct": this.total_right,
            "error": this.total_error,
          });
        }
    },
    startTimer() {
      if (this.isRunning) return
      
      this.isRunning = true
      this.startTime = Date.now() - this.elapsedTime
      
      this.timerInterval = setInterval(() => {
        this.elapsedTime = Date.now() - this.startTime
      }, 1000) // 每秒更新一次
    },
    stopTimer() {
      if (!this.isRunning) return
      
      this.isRunning = false
      clearInterval(this.timerInterval)
    },
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
}

/* 顶部标题栏样式 */
.header {
  background-color: #409eff;
  color: white;
  padding: 15px;
  display: flex;
  justify-content: space-between;
  padding-right: 50px;
}

.header-block {
  display: flex;
  justify-content: center;
  align-items: center;
}

.header h1 {
  font-size: 30px;
  font-weight: bold;
  margin: 0;
}

.header-block .el-button {
  font-size: 20px;
}

.div-question{
  height: 100px;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  align-content: flex-end;
}
.div-question span{
  font-size: 25px;
}

.div-explain{
  height: 40px;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}
.div-explain span{
  font-size: 25px;
  font-weight: bold;
}

.div-img{
  width: 100%;
  height: 400px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.div-buttons{
  margin-top: 30px;
  display: flex;
  flex-wrap: wrap;
  padding: 0 200px;
}
.div-buttons .el-button{
  font-size: 20px;
  margin: 20px;
  height: 40px;
}
</style>