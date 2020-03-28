<template>
  <div>
    <newheader></newheader>
    <div style="height: 80px;">

    </div>
    <div style="width: 100%;background: #f1f1f1;padding-bottom: 40px">
      <div style="width: 60%;height: 80px"></div>
      <div style="width: 60%;background: #fff;height: 900px;margin: 0 auto;padding: 30px">
        <el-row>
          <h3>共有090名经纪人</h3>
        </el-row>
        <el-row>

        </el-row>
      </div>
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
      cfooter: cfooter
    }
  }
</script>

<style scoped>

</style>
