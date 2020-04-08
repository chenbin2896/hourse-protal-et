<template>
    <div>
      <newheader></newheader>
      <div style="height: 220px;background: #f5f5f6;width: 100%">
        <div style="width: 60%;margin:  0 auto;">
          <el-row>
            <el-col :span="5">
              <h2 style="color: #00ae66;">万径房产</h2>
            </el-col>
            <el-col :span="14" style="text-align: center;padding-top: 70px">
              <h1>发布出售房源</h1>
              <span>8000+全国链家门店·10万+全国经纪人·链家倾情服务15年+</span>
            </el-col>
            <el-col :span="5" style="text-align: right">
              <span style="line-height: 70px">下载万径APP</span>
            </el-col>
          </el-row>

        </div>

      </div>
      <div style="width: 50%;margin:  0 auto;padding-top: 30px">
            <el-row style="padding-top: 20px" :gutter="40">
              <el-col :span="12">
                <el-form ref="form" :model="form" label-width="80px">
                  <el-form-item label="贷款类型">
                    <el-select v-model="form.region" placeholder="请选择活动区域">
                      <el-option label="区域一" value="shanghai"></el-option>
                      <el-option label="区域二" value="beijing"></el-option>
                    </el-select>
                  </el-form-item>
                  <el-form-item label="计算方式">
                    <el-select v-model="form.region" placeholder="请选择活动区域">
                      <el-option label="区域一" value="shanghai"></el-option>
                      <el-option label="区域二" value="beijing"></el-option>
                    </el-select>
                  </el-form-item>
                  <el-form-item label="商贷金额">
                    <el-input type="number" v-model="form.desc"></el-input>
                  </el-form-item>
                  <el-form-item label="商贷利率方式">
                    <el-select v-model="form.region" placeholder="请选择活动区域">
                      <el-option label="区域一" value="shanghai"></el-option>
                      <el-option label="区域二" value="beijing"></el-option>
                    </el-select>
                  </el-form-item>
                  <el-form-item label="LPR">
                    <el-input type="number" v-model="form.desc"></el-input>
                  </el-form-item>
                  <el-form-item label="基点">
                    <el-input type="number" v-model="form.desc"></el-input>
                  </el-form-item>
                  <el-form-item label="商贷利率">
                    <el-input type="text" v-model="form.desc"></el-input>
                  </el-form-item>
                  <el-form-item label="商贷年限">
                    <el-select v-model="form.region" placeholder="请选择活动区域">
                      <el-option label="区域一" value="shanghai"></el-option>
                      <el-option label="区域二" value="beijing"></el-option>
                    </el-select>
                  </el-form-item>

                </el-form>
              </el-col>
              <el-col :span="12">
                <el-card class="box-card">
                  <div slot="header" class="clearfix">
                    <el-row>
                      <el-col :span="8">类型</el-col>
                      <el-col :span="8">等额本息还款</el-col>
                      <el-col :span="8">等额本金还款</el-col>
                    </el-row>
                  </div>
                  <el-row class="crow">
                    <el-col :span="8">类型</el-col>
                    <el-col :span="8">等额本息还款</el-col>
                    <el-col :span="8">等额本金还款</el-col>
                  </el-row>
                  <el-row class="crow">
                    <el-col :span="8">类型</el-col>
                    <el-col :span="8">等额本息还款</el-col>
                    <el-col :span="8">等额本金还款</el-col>
                  </el-row>
                  <el-row class="crow">
                    <el-col :span="8">类型</el-col>
                    <el-col :span="8">等额本息还款</el-col>
                    <el-col :span="8">等额本金还款</el-col>
                  </el-row>
                </el-card>
              </el-col>
            </el-row>
            <el-row style="text-align: center;margin-bottom: 50px">
              <el-button type="success" @click="onSubmit" class="cbtn-bg">提交委托</el-button>
            </el-row>

      </div>
      <cfooter></cfooter>
    </div>
</template>

<script>
    import newheader from "@/components/newheader";
    import cfooter from "@/components/cfooter";
    export default {
        name: "index",
        components :{
            newheader,
            cfooter
        },
        data() {
            return{
                form: {
                    name: '',
                    region: '',
                    date1: '',
                    date2: '',
                    delivery: false,
                    type: [],
                    resource: '',
                    desc: '',
                    code:''
                }
            }
        },
        methods: {
            onSubmit() {
                console.log('submit!');
            }
        }
    }
</script>

<style scoped>
  .el-form-item__label{
    color: #000000;
  }
  .crow{
    line-height: 30px;
  }
  .cbtn-bg{
    width: 200px;
    height: 50px;
    font-size: 18px;
    background: #00ae66;
    border: none;
    border-radius: 0px
  }
</style>
