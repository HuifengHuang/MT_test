<template>
  <div class="main-container">
    <!-- 顶部标题栏 -->
    <header class="header">
      <div class="header-block"><h1>Machine Teaching</h1></div>
      <div class="header-block"><el-button size="large" type="warning" @click="next_question()">Continue to Next Question</el-button></div>
    </header>
    <div class="div-question">
      <span>Questions Answered: {{ this.question_id }} out of {{ this.question_num }}</span>
    </div>
    <el-divider />
    <div class="div-explain">
      <span v-if="is_selected&&!is_right">You selected {{ this.selected_name }}. The correct answer is {{ this.answer }}.</span>
      <span v-if="is_right">You are right. The answer is {{ this.answer }}.</span>
    </div>
    <div class="div-img">
      <span v-if="is_selected">{{ this.answer }}</span>
      <el-image :src="imageUrl" fit="fill"/>
    </div>
    <div class="div-buttons">
      <el-button type="primary" plain v-for="(answer, index) in options" :key="index" @click="select_class(answer, index)">{{ answer }}</el-button>
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
      question_id: this.$route.query.question,
      answer: null,
      options: [],
      question_num: 0,
      imageUrl: null,
      is_selected: false,
      selectedIndex: null,
      selected_name: null,
      is_right: false,
    }
  },
  created(){
    this.init();
    this.get_question_image();
    this.get_question_answer();
  },
  beforeUnmount() {
    // 组件销毁时释放URL对象
    if (this.imageUrl) {
      URL.revokeObjectURL(this.imageUrl);
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
        this.question_id = Number(this.question_id) + 1;
        this.get_question_image();
        this.get_question_answer();
    },
    select_class(answer, index){
        if(this.is_selected==true)return;
        this.selectedIndex = index;
        this.selected_name = answer;
        this.is_selected = true;
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
  padding: 0 200px;
}
.div-buttons .el-button{
  font-size: 20px;
  margin: 20px;
  height: 40px;
}
</style>