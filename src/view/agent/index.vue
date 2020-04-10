<template>
  <div>
    <newheader></newheader>
    <div style="height: 80px;"></div>
    <div style="width: 100%;background: #f1f1f1;padding-bottom: 40px">
      <div style="width: 60%;height: 40px"></div>
      <div style="width: 60%;background: #fff;margin: 0 auto;padding: 30px">
        <el-row>
          <h3>
            共有
            <span style="color: red">{{total}}</span>名经纪人
          </h3>
        </el-row>
        <el-row :gutter="30" style="border-bottom: 1px #e0e0e0 solid;padding-top: 30px" v-for="item in list" :key = "item.id">
          <el-col :span="2">
            <el-image
              :src="item.photograph"
            ></el-image>
          </el-col>
          <el-col :span="10">
            <el-row style="height: 40px">
              <span style="font-size: 22px;font-weight: bold">{{item.bname}}</span>
            </el-row>
            <el-row style="line-height: 30px">
              <span>{{item.contact}}</span>
            </el-row>
            <el-row style="line-height: 30px">
              <span>个人成绩:{{item.achievement}}</span>
            </el-row>
          </el-col>
          <el-col :span="4">
            <el-row>
              <h4 style="color: red">综合评分{{item.grade}}</h4>
            </el-row>
            <el-row>
              <h4>评论0条</h4>
            </el-row>
          </el-col>
          <el-col :span="8">
            <el-row>
              <h4>4008097959转3805</h4>
            </el-row>
            <el-row>
              <h4>联系方式{{item.contact}}</h4>
            </el-row>
          </el-col>
        </el-row>
        <el-row :gutter="30" style="border-bottom: 1px #e0e0e0 solid;padding-top: 30px">
          <el-col :span="2">
            <el-image
              :src="require('../../assets/img/2095a655-840f-46de-88c2-74754fbe3d4c.jpg.120x160.jpg')"
            ></el-image>
          </el-col>
          <el-col :span="10">
            <el-row style="height: 40px">
              <span style="font-size: 22px;font-weight: bold">程美玲</span>
            </el-row>
            <el-row style="line-height: 30px">
              <span>主营板块</span>
            </el-row>
            <el-row style="line-height: 30px">
              <span>主营板块</span>
            </el-row>
          </el-col>
          <el-col :span="4">
            <el-row>
              <h4 style="color: red">综合评分5.0</h4>
            </el-row>
            <el-row>
              <h4>评论56条</h4>
            </el-row>
          </el-col>
          <el-col :span="8">
            <el-row>
              <h4>4008097959转3805</h4>
            </el-row>
            <el-row>
              <h4>联系方式</h4>
            </el-row>
          </el-col>
        </el-row>
        <el-row :gutter="30" style="border-bottom: 1px #e0e0e0 solid;padding-top: 30px">
          <el-col :span="2">
            <el-image
              :src="require('../../assets/img/2095a655-840f-46de-88c2-74754fbe3d4c.jpg.120x160.jpg')"
            ></el-image>
          </el-col>
          <el-col :span="10">
            <el-row style="height: 40px">
              <span style="font-size: 22px;font-weight: bold">程美玲</span>
            </el-row>
            <el-row style="line-height: 30px">
              <span>主营板块</span>
            </el-row>
            <el-row style="line-height: 30px">
              <span>主营板块</span>
            </el-row>
          </el-col>
          <el-col :span="4">
            <el-row>
              <h4 style="color: red">综合评分5.0</h4>
            </el-row>
            <el-row>
              <h4>评论56条</h4>
            </el-row>
          </el-col>
          <el-col :span="8">
            <el-row>
              <h4>4008097959转3805</h4>
            </el-row>
            <el-row>
              <h4>联系方式</h4>
            </el-row>
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
    </div>

    <cfooter></cfooter>
  </div>
</template>

<script>
import newheader from "@/components/newheader";
import cfooter from "@/components/cfooter";
import informationApi from "@/api/information";

export default {
  name: "index",
  components: {
    newheader: newheader,
    cfooter: cfooter
  },
  data() {
    return {
      testImage:
        "https://image1.ljcdn.com/usercenter/images/uc_ehr_avatar/2095a655-840f-46de-88c2-74754fbe3d4c.jpg.120x160.jpg",
      list: [],
      total: 0, // 总记录数
      currentPage: 1, // 当前页
      pageSize: 10, // 每页大小
      searchMap: {} // 查询条件
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      informationApi
        .search(this.currentPage, this.pageSize, this.searchMap)
        .then(response => {
          this.list = response.data.rows;
          this.total = response.data.total;
        });
    }
  }
};
</script>

<style scoped>
</style>
