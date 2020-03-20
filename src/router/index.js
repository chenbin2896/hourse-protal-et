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
      path: '/cfooter',
      name: 'cfooter',
      component: ()=>import('@/components/cfooter'),
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
    },
    {
      path: '/app/index',
      name: 'app',
      component: ()=>import('@/view/app/index'),
      hidden: true
    },
    {
      path: '/app/message',
      name: 'message',
      component: ()=>import('@/view/app/message'),
      hidden: true
    },
    {
      path: '/app/house',
      name: 'message',
      component: ()=>import('@/view/app/house'),
      hidden: true
    },
    {
      path: '/app/mine',
      name: 'message',
      component: ()=>import('@/view/app/mine'),
      hidden: true
    }

  ]
})
