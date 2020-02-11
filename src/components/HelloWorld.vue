<template>

</template>

<script>
  export default {

      data() {

          const item = {
              date: '2016-05-02',
              name: '王小虎',
              address: '上海市普陀区金沙江路 1518 弄'
          };
          return {
              radio: '1',
              radio1:'1',
              checked: true,
              checkedList:['1','3'],
              input:'',
              tableData: Array(10).fill(item)
          }
      }

  }
</script>


<style scoped>
  .el-row {
    margin-bottom: 20px;
  }
  .el-header, .el-footer {
    background-color: #B3C0D1;
    color: #333;
    text-align: center;
    line-height: 60px;
  }

  .el-aside {
    background-color: #D3DCE6;
    color: #333;
    text-align: center;
    line-height: 200px;
  }

  .el-main {
    background-color: #E9EEF3;
    color: #333;
    text-align: center;
    line-height: 160px;
  }
</style>
