<template>
    <div>
      <el-container >

        <el-header>
          <!--<el-row type="flex" justify="center" >
            <el-col :span="16">-->
              <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect" style="padding-left: 20%;padding-right: 20%">
                <el-menu-item index="/">首页</el-menu-item>
                <el-menu-item index="/oldHouse">二手房</el-menu-item>
                <el-menu-item index="/newHouse">新房</el-menu-item>
                <el-menu-item index="/rentHouse">租房</el-menu-item>
                <el-menu-item index="/agent">经纪人</el-menu-item>
                <el-menu-item index="/publish">发布房源</el-menu-item>
                <el-menu-item index="/tool">工具</el-menu-item>
<!--                <el-menu-item @click="download">万径APP</el-menu-item>-->

                <el-menu-item @click="logout" style="float: right" v-show="logoutFlag">退出</el-menu-item>
                <el-menu-item @click="center" style="float: right" v-show="logoutFlag">个人中心</el-menu-item>
                <!--<el-submenu index="person" style="float: right" v-show="logoutFlag">
                  <template slot="title">个人中心</template>
                  <el-menu-item @click="center">我的关注</el-menu-item>
                  <el-menu-item @click="center">最近联系</el-menu-item>
                  <el-menu-item @click="center">浏览记录</el-menu-item>
                </el-submenu>-->
                <el-menu-item @click="center" style="float: right">{{loginOrRegis}}</el-menu-item>
                <!--            <el-menu-item index="10" style="float: right">注册</el-menu-item>-->
              </el-menu>
           <!-- </el-col>

          </el-row>-->


        </el-header>

      </el-container>

    </div>
</template>

<script>
    import store from '../store'
    import {getToken} from '@/utils/auth' // 验权
    import { mapGetters } from 'vuex'
    export default {
        name: "newheader",
        computed: {
            ...mapGetters([
                'name'
            ])

        },
        data() {
            return {

                activeIndex: '1',
                activeIndex2: '1',
                input:'',
                loginOrRegis:'登录注册',
                logoutFlag: false
            };
        },
        created() {
          if(getToken()) {
              store.dispatch('GetInfo').then(res => { // 拉取用户信息
                  this.loginOrRegis = this.name
                  this.logoutFlag = true
              }).catch((err) => {
                  alert("获取用户信息失败")
              })
          }else{

          }
        },
        mounted () {

          this.activeIndex =  this.$route.path;
        },
        methods: {
            handleSelect(key, keyPath) {
                this.activeIndex = key;
                this.$router.push({path: key})
            },
          ready() {
            var geolocation = new BMap.Geolocation()
            geolocation.getCurrentPosition((r) => {
              console.log(r.address.city)
              this.city = r.address.city;

            }, {enableHighAccuracy: true})
          },
          download(){
              window.open('https://www.lianjia.com/client/');
          },
          logout(){
              this.$store.dispatch('LogOut').then(() => {
                  location.reload() // 为了重新实例化vue-router对象 避免bug
              })
          },
            center() {
                if (this.loginOrRegis === '登录注册') {
                    this.$router.push({path:'/login'})
                }else{
                    this.$router.push({path:'/center/house'})
                }
            }
        }
    }
</script>

<style scoped>

</style>
