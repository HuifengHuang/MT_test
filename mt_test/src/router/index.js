import { createRouter, createWebHistory } from 'vue-router';
import Login from '../components/Login.vue';
import Main from '../components/Main.vue';
import Practice from '../components/Practice.vue';

const routes = [
  { path: '/', component: Login },
  { path: '/main', component: Main },
  { path: '/practice', component: Practice}
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
