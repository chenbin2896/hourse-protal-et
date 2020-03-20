<template>
  <div >
    <van-row>

      暂无消息
    </van-row>




    <van-row>
      <van-tabbar v-model="nav"  @change="onChange">
        <van-tabbar-item icon="home-o" name="index">首页</van-tabbar-item>
        <van-tabbar-item icon="search" name="message">消息</van-tabbar-item>
        <van-tabbar-item icon="friends-o" name="house">必看好房</van-tabbar-item>
        <van-tabbar-item icon="setting-o" name="mine">我的</van-tabbar-item>
      </van-tabbar>
    </van-row>
  </div>
</template>
<style>
  body{
    padding: 15px;
  }
</style>
<script>
  export default {
    name: "message",
    data(){
      return{
        value1: 0,
        option1: [
          { text: '北京', value: 0 },
          { text: '新款商品', value: 1 },
          { text: '活动商品', value: 2 }
        ],
        active: 1,
        nav: 'message'

      }
    },
    methods: {
      onChange(index) {
        this.$router.push({path:'/app/'+index})
      }
    }


  }
</script>

<style scoped>

</style>
