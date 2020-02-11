<template>
    <div>
      <cheader></cheader>
      <el-container>
        <el-main >
          <el-row style="text-align: center">
            <el-col :span="24">
              <h2>发布出租房源</h2>
              <h4>数万线下门店 · 快速全城推广 · 专业经纪人服务</h4>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="12" :offset="6">
              <el-form ref="form" :model="form" label-width="100px">
                <el-form-item label="小区所在城市">
                  <el-input v-model="form.name"></el-input>
                </el-form-item>
                <el-form-item label="小区名称">
                  <el-select v-model="form.region" placeholder="请选择活动区域">
                    <el-option label="区域一" value="shanghai"></el-option>
                    <el-option label="区域二" value="beijing"></el-option>
                  </el-select>
                </el-form-item>
                <el-form-item label="房屋地址">
                  <el-col :span="11">
                    <el-date-picker type="date" placeholder="选择日期" v-model="form.date1" style="width: 100%;"></el-date-picker>
                  </el-col>
                  <el-col class="line" :span="2">-</el-col>
                  <el-col :span="11">
                    <el-time-picker placeholder="选择时间" v-model="form.date2" style="width: 100%;"></el-time-picker>
                  </el-col>
                </el-form-item>
                <el-form-item label="期望租金">
                  <el-switch v-model="form.delivery"></el-switch>
                </el-form-item>
                <el-form-item label="出租方式">
                  <el-checkbox-group v-model="form.type">
                    <el-checkbox label="美食/餐厅线上活动" name="type"></el-checkbox>
                    <el-checkbox label="地推活动" name="type"></el-checkbox>
                    <el-checkbox label="线下主题活动" name="type"></el-checkbox>
                    <el-checkbox label="单纯品牌曝光" name="type"></el-checkbox>
                  </el-checkbox-group>
                </el-form-item>
                <el-form-item label="称呼">
                  <el-radio-group v-model="form.resource">
                    <el-radio label="线上品牌商赞助"></el-radio>
                    <el-radio label="线下场地免费"></el-radio>
                  </el-radio-group>
                </el-form-item>
                <el-form-item label="手机号码">
                  <el-input type="textarea" v-model="form.desc"></el-input>
                </el-form-item>
                <el-form-item label="图形验证码">
                  <el-input type="textarea" v-model="form.code"></el-input>
                </el-form-item>
                <el-form-item>
                  <el-button type="success" @click="onSubmit">立即创建</el-button>
                  <el-button>取消</el-button>
                </el-form-item>
              </el-form>
            </el-col>
          </el-row>
        </el-main>
      </el-container>
    </div>
</template>

<script>
    import cheader from "@/components/cheader";
    export default {
        name: "index",
        components :{
            cheader
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

</style>
