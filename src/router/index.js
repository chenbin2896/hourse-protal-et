import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'index',
      component: ()=>import('@/view/index')
    },
    {
      path: '/login',
      name: 'login',
      component: ()=>import('@/view/login/index')
    },
    {
      path: '/cheader',
      name: 'cheader',
      component: ()=>import('@/components/cheader'),
      hidden: true
    },
    {
      path: '/publish',
      name: 'publish',
      component: ()=>import('@/view/publish/index'),
      hidden: true
    },
    {
      path: '/info/:id',
      name: 'info',
      component: ()=>import('@/view/info/index'),
      hidden: true
    }

  ]
})
