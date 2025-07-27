<template>
  <div class="main-container">
    <!-- 顶部标题栏 -->
    <header class="header">
      <div class="header-block"><h1>Machine Teaching</h1></div>
      <div class="header-block"><el-button size="large" type="warning">Continue to Next Question</el-button></div>
    </header>
    <div class="div-question">
      <span>Questions Answered: {{ this.question }} out of {{ this.question_num }}</span>
    </div>
    <el-divider />
    <div class="div-explain">
      <span>You selected {{  }}. The correct answer is {{  }}.</span>
    </div>
    <div class="div-img">
      <span>Species</span>
      <img src="../assets/finish.jpg"/>
    </div>
    <div class="div-buttons">
      <el-button type="primary" plain>Species</el-button>
      <el-button type="primary" plain>sdhrea</el-button>
      <el-button type="primary" plain>ddd</el-button>
      <el-button type="primary" plain>hgrwhreree</el-button>
      <el-button type="primary" plain>Species</el-button>
      <el-button type="primary" plain>qwwqqqq</el-button>
      <el-button type="primary" plain>Species</el-button>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'PracticePage',
  data() {
    return {
      userId: this.$route.query.userId,
      mode: this.$route.query.mode,
      title: this.$route.query.title,
      question: this.$route.query.question,
      question_num: 0,
    }
  },
  created(){
    this.init();
  },
  methods: {
    init(){
        axios.post('http://localhost:5000/question_num', {
            "mode": this.mode,
            "title": this.title
        })
        .then(response => {
            let resp = response.data[0];
            console.log(resp['user_id']);
            this.question_num = resp['question_num'];
        });
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
  height: 60px;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}
.div-explain span{
  font-size: 25px;
  font-weight: bold;
}

.div-img{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.div-img img{
  width: 200px;
  height: 200px;
}

.div-buttons{
  margin-top: 30px;
  display: flex;
  flex-wrap: wrap;
  padding: 0 400px;
}
.div-buttons .el-button{
  font-size: 20px;
  margin: 20px;
  height: 40px;
}
</style>