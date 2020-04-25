<template>
  <div>
    <newheader></newheader>
    <div class="cheader">
      <div style="width: 60%;margin: 0 auto;line-height: 100px">
        <el-row>
          <el-col
            :span="3"
            style="font-size: 28px;cursor: pointer;color: #00ae66;font-weight: bold"
          >万径房产</el-col>
          <el-col :span="1" :offset="2" style="cursor: pointer">
            <span @click="send('/newHouse')">在售</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/rentHouse')">小区</span>
          </el-col>
          <el-col :span="2" style="cursor: pointer">
            <span @click="send('/businessHouse')">地图找房</span>
          </el-col>
          <el-col :span="4" :offset="4" style="cursor: pointer;color: #00ae66;float: right;">
            <span @click="send('/businessHouse')" style="color: #00ae66;">客服热线234242343</span>
          </el-col>
        </el-row>
      </div>
      <div style="padding-top: 30px">
        <el-row class="csearch" type="flex" justify="center">
          <el-col :span="8">
            <el-input
              placeholder="请输入内容"
              v-model="searchContent"
              class="input"
              style="border-radius: 0px"
            ></el-input>
          </el-col>
          <el-button type="success" class="cbtn-bg" @click="searchHouse">开始找房</el-button>
        </el-row>
      </div>
    </div>

    <div style="width: 60%;margin: 0 auto;padding: 20px">
      <el-row class="crow">
        <label>售价</label>
        <el-checkbox label="200万以下" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="200-250" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="250-300" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="300-400" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="400-500" true-label="1" false-label="0"></el-checkbox>
      </el-row>
      <el-row class="crow">
        <label>房型</label>
        <el-checkbox label="一室" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="二室" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="三室" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="四室" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="五室及以上" true-label="1" false-label="0"></el-checkbox>
      </el-row>
      <el-row class="crow">
        <label>面积</label>
        <el-checkbox label="50㎡以下" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="50㎡-70㎡" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="70㎡-90㎡" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="90㎡-110㎡" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="110㎡-130㎡" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="130㎡-150㎡" true-label="1" false-label="0"></el-checkbox>
        <el-checkbox label="150㎡以上" true-label="1" false-label="0"></el-checkbox>
      </el-row>
    </div>
    <div style="width: 60%;margin: 0 auto;padding: 20px">
      <el-menu
        :default-active="activeIndex"
        class="el-menu-demo"
        mode="horizontal"
        @select="handleSelect"
      >
        <el-menu-item index="1">默认排序</el-menu-item>
        <el-menu-item index="3">最新发布</el-menu-item>
        <el-menu-item index="4">房屋总价</el-menu-item>
        <el-menu-item index="5">房屋单价</el-menu-item>
        <el-menu-item index="6">房屋面积</el-menu-item>
      </el-menu>
      <el-row>
        <h2>共找到{{total}}套可租房源</h2>
      </el-row>
      <el-divider></el-divider>
      <el-row style="width:100%">
        <el-col style="width:85%;float:left">
          <el-row
            :gutter="20"
            style="height: 200px;padding-top:20px;cursor:pointer;border-bottom: 1px #DCDFE6 solid"
            v-for="item in list"
            :key="item.id"
          @click.native="info(item.id)">
            <el-col :span="4" style="height: 100%;">
              <el-row style="height: 90%;">
                <el-image :src="item.image[0]" style="height: 100%;"></el-image>
              </el-row>
            </el-col>
            <el-col :span="16">
              <el-row>
                <h2>{{item.house_title}}</h2>
              </el-row>
              <el-row class="crow">
                <span>{{item.house_desc}}</span>
              </el-row>
              <el-row class="crow">
                <span>{{item.rent_way}}|</span>
                <span>{{item.type}}|</span>
                <span>{{item.orientation}}|</span>
                <span>{{item.city}}|{{item.county}}|{{item.address}}|</span>
              </el-row>
              <el-row class="crow">
                <span>0关注</span>
              </el-row>
            </el-col>
            <el-col :span="4" style="height: 100%;">
              <span style="color:red;font-weight: bold;font-size: 28px">{{item.rent}}元/月</span>
              <br />
            </el-col>
          </el-row>
        </el-col>
        <el-col style="width:10%;float:right">
          <el-button type="primary" class="cbtn">试试地图找房</el-button>
        </el-col>
      </el-row>
      <el-pagination
        @size-change="fetchData"
        @current-change="fetchData"
        :current-page.sync="currentPage"
        :page-sizes="[5,10,20]"
        :page-size="10"
        layout="total, sizes, prev, pager, next, jumper"
        :total="total"
      ></el-pagination>
    </div>
    <cfooter></cfooter>
  </div>
</template>

<script>
import newheader from "@/components/newheader";
import cfooter from "@/components/cfooter";
import renthouseApi from "@/api/resource";
export default {
  name: "index",
  components: {
    newheader: newheader,
    cfooter: cfooter
  },
  data() {
    return {
      testImage:
        "http://117.51.142.27:9003/5eb404d9-76d8-4048-ad69-24ef1243fa67.jpg",
      searchContent: "",
      activeIndex: "1",
      list: [],
      total: 0, // 总记录数
      currentPage: 1, // 当前页
      pageSize: 10, // 每页大小
      searchMap: {} // 查询条件
    };
  },
  created() {
      if(this.$route.params.content){
          this.searchMap = {
              "house_title":this.$route.params.content
          }
      }
      this.fetchData();
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
    fetchData() {
      renthouseApi
        .search(this.currentPage, this.pageSize, this.searchMap)
        .then(response => {
          this.list = response.data.rows;
          this.total = response.data.total;
        });
    },
    info(id) {
        this.$router.push('/rentHouse/info/'+id)
    },
      searchHouse(){
          this.searchMap = {
              "house_title":this.searchContent
          }
          this.fetchData()
      }
  }
};
</script>

<style scoped>
.cheader {
  width: 100%;
  height: 220px;
  background: #f5f5f6;
}
span {
  color: #000;
}
.csearch {
  width: 100%;
}
.cbtn-bg {
  background: #00ae66;
  border: none;
  border-radius: 0px;
}
.crow {
  line-height: 30px;
}
</style>
