<template>
  <div>
    <newheader></newheader>
    <el-container>
      <el-header>
        <el-row class="cheader">
          <el-col
            :span="2"
            style="font-size: 28px;cursor: pointer;color: #00ae66;font-weight: bold"
          >万径房产</el-col>
          <el-col :span="1" :offset="2" style="cursor: pointer">
            <span @click="send('/newHouse')">首页</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/oldHouse')">楼盘</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/rentHouse')">在售</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/businessHouse')">地图找房</span>
          </el-col>
          <el-col :span="4" :offset="4" style="cursor: pointer;color: #00ae66;">
            <span @click="send('/businessHouse')" style="color: #00ae66;">客服热线234242343</span>
          </el-col>
        </el-row>
      </el-header>
      <el-main>
        <el-row class="cmain">
          <el-col class="cmap" style="text-align: center">
            <el-button
              style="background: #f15044;color: #fff;border: none;width: 160px;"
              type="success"
            >地图找房</el-button>
          </el-col>
        </el-row>
      </el-main>
    </el-container>
    <el-container>
      <el-main>
        <el-row style="text-align: center;">
          <h1>精选楼盘</h1>
        </el-row>
        <el-row style="width: 60%;margin: 0 auto" :gutter="20"  >
          <el-col :span="12" v-for="item in list"
            :key="item.id" style="height:220px;overflow:hidden;cursor:pointer" @click.native="info(item.id)">
            <el-row style="background: #f7f7f7;padding-left: 0px;margin: 10px">
              <el-col :span="9" style="padding: 0px">
                <el-image :src="item.image[0]" style="height: 180px;"></el-image>
              </el-col>
              <el-col :span="13" style="padding-left: 20px">
                <h2 style="line-height: 30px">{{item.house_title}}</h2>
                <b style="line-height: 30px">{{item.house_desc}}</b>
                <br />
                <b style="line-height: 30px">{{item.greeting_rate}}</b>
              </el-col>
            </el-row>
          </el-col>

        </el-row>
        <el-row style="text-align: center;">
          <h1>推荐楼盘</h1>
        </el-row>
        <el-row style="width: 60%;margin: 0 auto" :gutter="20">
          <el-col :span="12" v-for="item in list"
            :key="item.id" style="height:220px;overflow:hidden;cursor:pointer" @click.native="info(item.id)">
            <el-row style="background: #f7f7f7;padding-left: 0px;margin: 10px">
              <el-col :span="9" style="padding: 0px">
                <el-image :src="item.image[1]" style="height: 180px;"></el-image>
              </el-col>
              <el-col :span="13" style="padding-left: 20px">
                <h2 style="line-height: 30px">{{item.house_title}}</h2>
                <b style="line-height: 30px">{{item.house_desc}}</b>
                <br />
                <b style="line-height: 30px">{{item.greeting_rate}}</b>
              </el-col>
            </el-row>
          </el-col>

        </el-row>
      </el-main>
    </el-container>
    <cfooter></cfooter>
  </div>
</template>

<script>
import newheader from "@/components/newheader";
import cfooter from "@/components/cfooter";
import newhouseApi from "@/api/newhouse";
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
    send(path) {
      this.$router.push({ path: path });
    },
    fetchData() {
      newhouseApi
        .search(this.currentPage, this.pageSize, this.searchMap)
        .then(response => {
          this.list = response.data.rows;
          this.total = response.data.total;
        });
    },
    info(id) {
        this.$router.push('/newHouse/info/'+id)
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
  line-height: 100px;
  color: #000;
  padding-left: 20%;
  text-align: center;
}
.cmain {
  background: url("../../assets/img/banner.jpg");
  width: 100%;
  height: 430px;
  background-repeat: no-repeat;
  background-size: cover;
}
.cmap {
  margin-top: 80px;
  width: 250px;
  height: 348px;
  background-image: url("../../assets/img/map_beijing@2x.png");
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
