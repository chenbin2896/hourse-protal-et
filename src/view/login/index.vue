<template>
  <div>
    <div style="height: 40px;padding-left: 100px;border-bottom: 3px #00ae66 solid;">
        <h2 style="color: #00ae66;cursor: pointer" @click="indexShow">万径房产</h2>
    </div>
    <div class="bg">
      <div style="width: 320px;margin: 0 auto;background: #fff;padding: 40px">
        <el-row>
          <h2 style="color: #000">账号密码登录</h2>
        </el-row>
        <el-form ref="form" :model="form" label-width="0px">
          <el-form-item label="">
            <el-input type="text" v-model="form.username" placeholder="请输入手机号"></el-input>
          </el-form-item>
          <el-form-item label="">
            <el-input type="password" v-model="form.password" placeholder="请输入密码"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="success" @click="onSubmit" class="cbtn-bg">立即登录</el-button>
          </el-form-item>
        </el-form>
        <el-row style="line-height: 30px;color: #376699;font-size: 14px">
          <span style="cursor: pointer" @click="register">立即注册</span>
          <span style="float: right;cursor: pointer" @click="forget">忘记密码</span>
        </el-row>
        <el-row style="text-align: center;color: #999999;font-size: 12px;line-height: 50px">
          <span style="cursor: pointer">我已阅读并接受 《万径用户服务协议》及 《万径隐私政策》</span>
        </el-row>
      </div>

    </div>
    <cfooter style="position: absolute;bottom: 0px"></cfooter>
  </div>
</template>
<script>
  import cheader from "@/components/cheader";
  import cfooter from "@/components/cfooter";

  export default {
    name: "login",
    components: {
      cheader,
      cfooter
    },
    data() {
      return {
        ruleForm: {
          username: '',
          password:''
        },
        rules: {
          username: [
            {required: true, message: '请输入手机号', trigger: 'blur'},
            {min: 11, max: 11, message: '请输入长度为11位的手机号', trigger: 'blur'}
          ],
          password: [
            {required: true, message: '请输入密码', trigger: 'blur'},
            {min: 6, max: 12, message: '长度在 6 到 12 位的密码', trigger: 'blur'}
          ]
        },
        form: {
          username: '',
          password: ''
        }
      };
    },
    methods: {
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            alert('submit!');
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      register() {
        alert("立即注册");
      },
      forget() {
        alert("忘记密码");
      },
      indexShow(){
        this.$router.push({path:'/'});
      }
    }
  }
</script>

<style scoped>
  .bg {
    background-image: url("../../assets/img/bg-login.jpg");
    background-repeat: no-repeat;
    background-size: 100% 100%;
    height: 700px;
    color: #E9EEF3;
    padding-top: 150px;
  }

  .el-form-item__label{
    color: #000000;
  }
  .el-form-item__label {
    color: #E9EEF3;
  }

  .cbtn-bg{
    width: 100%;
    height: 40px;
    font-size: 14px;
    background: #00ae66;
    border: none;
    border-radius: 0px
  }
</style>
