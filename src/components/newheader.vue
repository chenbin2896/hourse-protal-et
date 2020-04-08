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
                <el-menu-item @click="download">万径APP</el-menu-item>

                <el-menu-item @click="logout" style="float: right">退出</el-menu-item>
                <el-submenu index="person" style="float: right">
                  <template slot="title">个人中心</template>
                  <el-menu-item index="7-1">我的关注</el-menu-item>
                  <el-menu-item index="7-2">最近联系</el-menu-item>
                  <el-menu-item index="7-3">浏览记录</el-menu-item>
                </el-submenu>
                <el-menu-item index="/login" style="float: right">登录注册</el-menu-item>
                <!--            <el-menu-item index="10" style="float: right">注册</el-menu-item>-->
              </el-menu>
           <!-- </el-col>

          </el-row>-->


        </el-header>

      </el-container>

    </div>
</template>

<script>

    export default {
        name: "newheader",
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
          },
          download(){
              window.open('https://www.lianjia.com/client/');
          },
          logout(){
              this.$router.push({path:'/'});
          }
        }
    }
</script>

<style scoped>

</style>
