<template>
    <div>
      <el-container >

        <el-header >

          <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
            <el-menu-item index="/" ><i  class="el-input__icon el-icon-location-outline"></i>{{city}}</el-menu-item>
            <el-menu-item index="/">首页</el-menu-item>
            <el-menu-item index="2">整租</el-menu-item>
            <el-menu-item index="3">合租</el-menu-item>
            <el-menu-item index="/publish">发布房源</el-menu-item>
            <el-menu-item index="5">下载APP</el-menu-item>

            <el-menu-item index="/logout" style="float: right">退出</el-menu-item>
            <el-submenu index="person" style="float: right">
              <template slot="title">个人中心</template>
              <el-menu-item index="7-1">我的关注</el-menu-item>
              <el-menu-item index="7-2">最近联系</el-menu-item>
              <el-menu-item index="7-3">浏览记录</el-menu-item>
            </el-submenu>
            <el-menu-item index="/login" style="float: right">登录注册</el-menu-item>
<!--            <el-menu-item index="10" style="float: right">注册</el-menu-item>-->
          </el-menu>

        </el-header>

      </el-container>

    </div>
</template>

<script>
    import BMap from 'BMap'
    export default {
        name: "oldheader",
        data() {
            return {
                city:'',
                activeIndex: '1',
                activeIndex2: '1',
                input:''
            };
        },
        mounted () {
          this.ready();
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
            }
        }
    }
</script>

<style scoped>

</style>
