import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import 'element-plus/dist/index.css'
import ElementPlus from 'element-plus'

const app = createApp(App);
app.config.globalProperties.$ip_address = '192.168.0.105';
app.use(router).use(ElementPlus).mount('#app')