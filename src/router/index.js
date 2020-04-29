import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)
import Center from '../view/center/index'
export default new Router({
  routes: [
    {
      path: '/index',
      name: 'index',
      component: ()=>import('@/view/index')
    },

    //首页
    {
      path: '/',
      name: 'index',
      component: ()=>import('@/view/index/index')
    },
    //登录页
    {
      path: '/login',
      name: 'login',
      component: ()=>import('@/view/login/index')
    },
    //导航头部
    {
      path: '/cheader',
      name: 'cheader',
      component: ()=>import('@/components/cheader'),
      hidden: true
    },
    //导航头部
    {
      path: '/newheader',
      name: 'newheader',
      component: ()=>import('@/components/newheader'),
      hidden: true
    },
    //版权尾部
    {
      path: '/cfooter',
      name: 'cfooter',
      component: ()=>import('@/components/cfooter'),
      hidden: true
    },


    //-------------------------------------------
    //发布房源
    {
      path: '/publish',
      name: 'index',
      component: ()=>import('@/view/publish/index'),
      hidden: true
    },



    //-------------------------------------------
    //二手房
    {
      path: '/oldHouse/:content?',
      name: 'index',
      component: ()=>import('@/view/oldHouse/index'),
      hidden: true
    },
    {
      path: '/oldHouse/info/:id',
      name: 'info',
      component: ()=>import('@/view/oldHouse/info'),
      hidden: true
    },
    //-------------------------------------------
    //租房
    {
      path: '/rentHouse/:content?',
      name: 'index',
      component: ()=>import('@/view/rentHouse/index'),
      hidden: true
    },
    {
      path: '/rentHouse/info/:id',
      name: 'info',
      component: ()=>import('@/view/rentHouse/info'),
      hidden: true
    },

    //-------------------------------------------
    //新房
    {
      path: '/newHouse/:content?',
      name: 'index',
      component: ()=>import('@/view/newHouse/index'),
      hidden: true
    },
    {
      path: '/newHouse/info/:id',
      name: 'info',
      component: ()=>import('@/view/newHouse/info'),
      hidden: true
    },

    //-------------------------------------------
    //工具
    {
      path: '/tool/',
      name: 'index',
      component: ()=>import('@/view/tool/index'),
      hidden: true
    },

    //-------------------------------------------
    //经纪人
    {
      path: '/agent/',
      name: 'index',
      component: ()=>import('@/view/agent/index'),
      hidden: true
    },

    //-------------------------------------------
    //商业办公
    {
      path: '/businessHouse/',
      name: 'index',
      component: ()=>import('@/view/businessHouse/index'),
      hidden: true
    },
    //-------------------------------------------
    //房价
    {
      path: '/housePrice/',
      name: 'index',
      component: ()=>import('@/view/housePrice/index'),
      hidden: true
    },
    //-------------------------------------------
    //个人中心
    {
      path: '/center/',
      name: 'index',
      component: ()=>import('@/view/center/index'),
      hidden: true
    },
    {
      path: '/center/',
      name: 'index',
      component: Center,
      children: [
        { path: 'house', name: 'house', component: () => import('@/view/center/house')}
      ]
    },





    //---------------------------------------------
    //移动端
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
