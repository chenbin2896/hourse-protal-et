// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import Vant from 'vant';
import 'vant/lib/index.css';
import App from './App'
import router from './router'
import store from './store'
import 'normalize.css/normalize.css'// A modern alternative to CSS resets
import Distpicker from 'v-distpicker'

Vue.component('v-distpicker', Distpicker)
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import locale from 'element-ui/lib/locale/lang/zh-CN'
import BaiduMap from 'vue-baidu-map'
Vue.use(BaiduMap, {
  // ak 是在百度地图开发者平台申请的密钥 详见 http://lbsyun.baidu.com/apiconsole/key */
  ak: 'dhWAObc1BRUmGd56eaBwf8mC7C18dTmO'
})
Vue.use(ElementUI, { locale })
Vue.config.productionTip = false
Vue.use(Vant)
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
