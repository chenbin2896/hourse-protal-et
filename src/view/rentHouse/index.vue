<template>
  <div>
    <newheader></newheader>
    <div class="cheader">
      <div style="width: 60%;margin: 0 auto;line-height: 100px">
        <el-row >
          <el-col :span="3" style="font-size: 28px;cursor: pointer;color: #00ae66;font-weight: bold">万径房产
          </el-col>
          <el-col :span="1" :offset="2" style="cursor: pointer" ><span @click="send('/newHouse')">在售</span></el-col>
          <el-col :span="1" style="cursor: pointer"><span @click="send('/rentHouse')">小区</span></el-col>
          <el-col :span="2" style="cursor: pointer"><span @click="send('/businessHouse')">地图找房</span></el-col>
          <el-col :span="4" :offset="4" style="cursor: pointer;color: #00ae66;float: right;"><span @click="send('/businessHouse')" style="color: #00ae66;">客服热线234242343</span></el-col>
        </el-row>

      </div>
      <div style="padding-top: 30px">
        <el-row class="csearch" type="flex" justify="center">
          <el-col :span="8">
            <el-input placeholder="请输入内容" v-model="searchContent" class="input" style="border-radius: 0px">

            </el-input>
          </el-col>
          <el-button  type="success" class="cbtn-bg" >开始找房</el-button>
        </el-row>
      </div>
    </div>

    <div style="width: 60%;margin: 0 auto;padding: 20px">
      <el-row class="crow">
        <label>位置</label>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
      </el-row>
      <el-row class="crow">
        <label>位置</label>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
      </el-row>
      <el-row class="crow">
        <label>位置</label>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox  label="电梯" true-label="1" false-label="0"></el-checkbox>
      </el-row>
    </div>
    <div style="width: 60%;margin: 0 auto;padding: 20px">
      <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
        <el-menu-item index="1">默认排序</el-menu-item>
        <el-menu-item index="3">最新发布</el-menu-item>
        <el-menu-item index="4">房屋总价</el-menu-item>
        <el-menu-item index="5">房屋单价</el-menu-item>
        <el-menu-item index="6">房屋面积</el-menu-item>
      </el-menu>
      <el-row>
        <h2>共找到5554套太原二手房</h2>
      </el-row>
      <el-divider></el-divider>
      <el-row :gutter="20" style="height: 200px;padding-top:20px;border-bottom: 1px #DCDFE6 solid">

        <el-col :span="4"style="height: 100%;">
          <el-row  style="height: 90%;">
            <el-image :src="testImage" style="height: 100%;"></el-image>
          </el-row>
        </el-col>
        <el-col :span="12">
          <el-row>
            <h2>优派对xdfasdfa打发斯蒂芬</h2>
          </el-row>
          <el-row class="crow">
            <span>小沙发沙发手动阀</span>
          </el-row>
          <el-row class="crow">
            <span>2室一胜多负少三等厅</span>
          </el-row>
          <el-row class="crow">
            <span>0关注手动阀撒大</span>
          </el-row>
        </el-col>
        <el-col :span="4" style="height: 100%;">
          <span style="color:red;font-weight: bold;font-size: 28px">65万</span><br>
          <span style="line-height: 30px">单价200000/平米</span>
        </el-col>
        <el-col :span="4">
          <el-button type="primary" class="">地图找房</el-button>
        </el-col>

      </el-row>
      <el-row :gutter="20" style="height: 200px;padding-top:20px;border-bottom: 1px #DCDFE6 solid">

        <el-col :span="4"style="height: 100%;">
          <el-row  style="height: 90%;">
            <el-image :src="testImage" style="height: 100%;"></el-image>
          </el-row>
        </el-col>
        <el-col :span="12">
          <el-row>
            <h2>优派对xdfasdfa打发斯蒂芬</h2>
          </el-row>
          <el-row class="crow">
            <span>小沙发沙发手动阀</span>
          </el-row>
          <el-row class="crow">
            <span>2室一胜多负少三等厅</span>
          </el-row>
          <el-row class="crow">
            <span>0关注手动阀撒大</span>
          </el-row>
        </el-col>
        <el-col :span="4" style="height: 100%;">
          <span style="color:red;font-weight: bold;font-size: 28px">65万</span><br>
          <span style="line-height: 30px">单价200000/平米</span>
        </el-col>
        <el-col :span="4">
          <el-button type="primary" class="">地图找房</el-button>
        </el-col>

      </el-row>
      <el-row :gutter="20" style="height: 200px;padding-top:20px;border-bottom: 1px #DCDFE6 solid">

        <el-col :span="4"style="height: 100%;">
          <el-row  style="height: 90%;">
            <el-image :src="testImage" style="height: 100%;"></el-image>
          </el-row>
        </el-col>
        <el-col :span="12">
          <el-row>
            <h2>优派对xdfasdfa打发斯蒂芬</h2>
          </el-row>
          <el-row class="crow">
            <span>小沙发沙发手动阀</span>
          </el-row>
          <el-row class="crow">
            <span>2室一胜多负少三等厅</span>
          </el-row>
          <el-row class="crow">
            <span>0关注手动阀撒大</span>
          </el-row>
        </el-col>
        <el-col :span="4" style="height: 100%;">
          <span style="color:red;font-weight: bold;font-size: 28px">65万</span><br>
          <span style="line-height: 30px">单价200000/平米</span>
        </el-col>
        <el-col :span="4">
          <el-button type="primary" class="">地图找房</el-button>
        </el-col>

      </el-row>
    </div>
    <cfooter></cfooter>
  </div>
</template>

<script>
  import newheader from '@/components/newheader';
  import cfooter from '@/components/cfooter';
  export default {
    name: "index",
    components: {
      newheader: newheader,
      cfooter: cfooter,
      activeIndex:'1'
    },
    data() {
      return{
        testImage:'https://image1.ljcdn.com/140100-inspection/pc1_xM9mHQPVj_1.jpg.296x216.jpg'
      }

    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style scoped>
  .cheader{
    width: 100%;
    height: 220px;
    background: #f5f5f6;
  }
  span{
    color: #000;
  }
  .csearch{
    width: 100%;
  }
  .cbtn-bg{
    background: #00ae66;
    border: none;
    border-radius: 0px
  }
  .crow{
    line-height: 30px;
  }
</style>
