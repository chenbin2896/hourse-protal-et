<template>
  <div >
    <van-row>
      <van-col span="4">
        <van-dropdown-menu>
          <van-dropdown-item v-model="value1" :options="option1"/>
        </van-dropdown-menu>
      </van-col>
      <van-col span="20">
        <van-search v-model="value" placeholder="请输入搜索关键词"/>
      </van-col>
    </van-row>
    <van-row>
      <van-col span="8">二手房</van-col>
      <van-col span="8">二手房</van-col>
      <van-col span="8">二手房</van-col>
    </van-row>
    <van-row>
      <van-col span="6">商业办公</van-col>
      <van-col span="6">卖房</van-col>
      <van-col span="6">地图找房</van-col>
      <van-col span="6">更多</van-col>
    </van-row>
    <van-row>
      <van-col span="24">
        <van-image
          width="100%"
          height="130"
          src="https://img.yzcdn.cn/vant/cat.jpeg"
        />
      </van-col>
    </van-row>

    <van-row>
      <van-row>
        <van-col span="12">我的房子</van-col>
        <van-col span="12">更多服务</van-col>
      </van-row>
      <van-row >
        <van-row style="border:1px #f2f2f2 solid;border-radius: 5px">
          xxxxxxxxxxxxxxxxxxxxxx
          <van-divider />
          <van-row>
            <van-button type="primary">主要按钮</van-button>
          </van-row>
        </van-row>

      </van-row>
    </van-row>

    <van-row>
      <van-tabs v-model="active">
        <van-tab title="标签 1">内容 1</van-tab>
        <van-tab title="标签 2">内容 2</van-tab>
        <van-tab title="标签 3">内容 3</van-tab>
        <van-tab title="标签 4">内容 4</van-tab>
      </van-tabs>
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
    name: "index",
    data(){
      return{
        value1: 0,
        option1: [
          { text: '北京', value: 0 },
          { text: '新款商品', value: 1 },
          { text: '活动商品', value: 2 }
        ],
        active: 1,
        nav: 'index'

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
