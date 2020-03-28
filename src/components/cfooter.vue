<template>
  <div class="cfooter">
    <div style="width: 60%;margin: 0 auto">
      <el-row style="color: #fff;line-height: 80px">
        <span>关于万径</span>
        <span>联系我们</span>
        <span>加入我们</span>
        <span>隐私声明</span>
        <span>网站地图</span>
        <span>友情链接</span>
        <span style="float: right;color: #7dcfa0;">官方客服102510202</span>
      </el-row>
      <el-row>
        <span class="content">万径房产（北京）科技有限公司 | 网络经营许可证 京ICP备16057509号-2 | © Copyright©2010-2020 万径网wanjin.com版权所有 | 营业执照</span>
        <br>
        <span class="content">违法和不良信息举报电话：010-86440676 违法和不良信息举报邮箱：jubaoyouxiang@wanjin.com</span>
      </el-row>
    </div>
  </div>
</template>

<script>
    export default {
      name: "cfooter"
    }
</script>

<style scoped>
.cfooter{
  width: 100%;
  padding-bottom: 20px;
  background: url("../assets/img/footer-bg.jpg");
}
  span{
    padding: 10px;
  }
  .content{
    color:#888c8e;
    line-height: 30px;
    font-size: 12px;
  }
</style>
