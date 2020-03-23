<template>
  <div>
    <newheader></newheader>
    <el-container>
      <el-header>
        <el-row class="cheader" >

          <el-col :span="3" style="font-size: 28px;cursor: pointer;color: #00ae66;font-weight: bold">万径房产
          </el-col>
          <el-col :span="1" :offset="2" style="cursor: pointer" ><span @click="send('/newHouse')">首页</span></el-col>
          <el-col :span="1" style="cursor: pointer"><span @click="send('/oldHouse')">楼盘</span></el-col>
          <el-col :span="1" style="cursor: pointer"><span @click="send('/rentHouse')">在售</span></el-col>
          <el-col :span="2" style="cursor: pointer"><span @click="send('/businessHouse')">地图找房</span></el-col>
          <el-col :span="4" :offset="4" style="cursor: pointer;color: #00ae66;"><span @click="send('/businessHouse')">客服热线234242343</span></el-col>
        </el-row>
      </el-header>
      <el-main>
        <el-row  class="cmain">
          <el-col class="cmap" style="text-align: center">
            <el-button style="background: #f15044;color: #fff;border: none;width: 160px;" type="success">地图找房</el-button>
          </el-col>
        </el-row>
      </el-main>
    </el-container>
    <el-container>
      <el-main>
        <el-row style="text-align: center;">
          <h1>精选楼盘</h1>
        </el-row>
        <el-row  :gutter="20" style="width: 80%;margin: 0 auto">
          <div style="width: 50%">

          </div>
          <el-col style="width:50%;margin: 10px 5px;padding: 0px;background: #f2f2f2;">
            <el-col :span="8" style="padding: 0px">
              <el-image :src="require('../../assets/newhouse/c7151ad70651832b9352de793b503e0a.jpg.185x185.jpg')"></el-image>
            </el-col>
            <el-col :span="16" style="height: 100%;">
              <el-row>
                <h3>建邦·顺颐府 住宅</h3>
                <h5 style="font-weight: normal">顺义</h5>
                <h5>建面 89-270㎡</h5>
                <h5>均价 55583 元/平</h5>
              </el-row>
            </el-col>
          </el-col>
          <el-col style="width:50%;margin: 0 auto;padding: 0px;background: #f2f2f2;">
            <el-col :span="8" style="padding: 0px">
              <el-image :src="require('../../assets/newhouse/c7151ad70651832b9352de793b503e0a.jpg.185x185.jpg')"></el-image>
            </el-col>
            <el-col :span="16" style="height: 100%;">
              <el-row>
                <h3>建邦·顺颐府 住宅</h3>
                <h5 style="font-weight: normal">顺义</h5>
                <h5>建面 89-270㎡</h5>
                <h5>均价 55583 元/平</h5>
              </el-row>
            </el-col>
          </el-col>




        </el-row>
        <el-row style="text-align: center;">
          <h1>推荐楼盘</h1>
        </el-row>
        <el-row style="width: 80%;margin: 0 auto" :gutter="20">
          <el-col :span="12">
            sdadfasdfasdf
          </el-col>
          <el-col :span="12">
            sdadfasdfasdf
          </el-col>
        </el-row>
      </el-main>
    </el-container>
  </div>
</template>

<script>
  import newheader from '@/components/newheader';

  export default {
    name: "index",
    data() {
      return{

      }
    },
    components: {
      newheader: newheader
    },
    methods: {
      send(path) {
        this.$router.push({path:path});
      }
    }
  }
</script>

<style scoped>
  .cheader{
    width: 100%;
    line-height: 100px;
    color: #000;
    padding-left: 20%;
    text-align: center;
  }
  .cmain{
    background: url("../../assets/img/banner.jpg");
    width: 100%;
    height: 430px;
    background-repeat: no-repeat;
    background-size: cover;
  }
  .cmap{
    margin-top: 80px;
    width: 250px;
    height: 348px;
    background-image: url("../../assets/img/map_beijing@2x.png");
    background-repeat: no-repeat;
    background-size: cover;
  }
</style>
