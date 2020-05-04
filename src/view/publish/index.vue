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
              <el-col :span="24">
                <el-form label-width="180px" >
                  <el-form-item label="图片">
                    <el-upload
                      action="http://localhost:9001/rent/upload"
                      list-type="picture-card"
                      :on-preview="handlePictureCardPreview"
                      :on-remove="handleRemove"
                      :on-success="handleUploadSuccess"
                      :limit="limitImageCount"
                      :on-exceed="handleExceed"
                      :file-list="fileList"
                    >
                      <i class="el-icon-plus"></i>
                    </el-upload>
                    <el-dialog :visible.sync="dialogVisible">
                      <img width="100%" :src="dialogImageUrl" alt="">
                    </el-dialog>
                  </el-form-item>
                  <el-form-item label="房源所在省份">
                    <v-distpicker province="广东省" city="广州市" area="海珠区" @selected="onSelected"></v-distpicker>

                  </el-form-item>
                  <el-form-item label="详细地址">
                    <el-input v-model="pojo.address"></el-input>
                  </el-form-item>
                  <el-form-item label="租房方式">
                    <el-input v-model="pojo.rent_way"></el-input>
                  </el-form-item>
                  <el-form-item label="租金">
                    <el-input v-model="pojo.rent"></el-input>
                  </el-form-item>
                  <el-form-item label="房屋朝向">
                    <el-input v-model="pojo.orientation"></el-input>
                  </el-form-item>
                  <el-form-item label="房屋类型">
                    <el-input v-model="pojo.type"></el-input>
                  </el-form-item>
                  <el-form-item label="委托人">
                    <el-input v-model="pojo.bailor"></el-input>
                  </el-form-item>

                  <el-form-item label="房屋面积">
                    <el-input v-model="pojo.square"></el-input>
                  </el-form-item>
                  <el-form-item label="房屋所在楼层">
                    <el-input v-model="pojo.floor"></el-input>
                  </el-form-item>

                  <el-form-item label="配套设施">
                    <el-checkbox label="电梯"  v-model="pojo.elevator" true-label="1" false-label="0"></el-checkbox>
                    <el-checkbox label="车位"  v-model="pojo.carport" true-label="1" false-label="0"></el-checkbox>
                    <el-checkbox label="用水"  v-model="pojo.water" true-label="1" false-label="0"></el-checkbox>
                    <el-checkbox label="用电"  v-model="pojo.electricity" true-label="1" false-label="0"></el-checkbox>
                    <el-checkbox label="燃气"  v-model="pojo.gas" true-label="1" false-label="0"></el-checkbox>
                    <el-checkbox label="取暖"  v-model="pojo.heater" true-label="1" false-label="0"></el-checkbox>
                    <el-checkbox label="用电"  v-model="pojo.electricity" true-label="1" false-label="0"></el-checkbox>
                  </el-form-item>
                  <el-form-item label="租期">
                    <el-input v-model="pojo.tenancy"></el-input>
                  </el-form-item>
                  <el-form-item label="房源标题">
                    <el-input v-model="pojo.house_title"></el-input>
                  </el-form-item>

                </el-form>
              </el-col>
            </el-row>
            <el-row style="text-align: center;margin-bottom: 50px">
              <el-button type="success" @click="handleSave" class="cbtn-bg">提交委托</el-button>
            </el-row>

      </div>
      <cfooter></cfooter>
    </div>
</template>

<script>
    import newheader from "@/components/newheader";
    import cfooter from "@/components/cfooter";
    import resourceApi from "@/api/resource";
    export default {
        name: "index",
        components :{
            newheader,
            cfooter
        },
        data() {
            return{

                  name: '',
                  region: '',
                  date1: '',
                  date2: '',
                  delivery: false,
                  type: [],
                  resource: '',
                  desc: '',
                  code:'',
                  pojo: {}, // 编辑表单绑定的实体对象
                  cityList: [], // 城市列表
                  dialogImageUrl: '',
                  dialogVisible: false,
                  uploadPicture: [],
                  fileList:[],
                  limitImageCount:6,
                  id: '' // 当前用户编辑的ID
              }

        },
        methods: {
            onSubmit() {
                console.log('submit!');
            },
            handleSave() {
                if (this.pojo.id != null) {

                    for (var i = 0; i < this.uploadPicture.length; i++) {
                        this.pojo.image.push(this.uploadPicture[i]);
                    }
                } else {
                    this.pojo.image = [];
                    for (var i = 0; i < this.uploadPicture.length; i++) {
                        this.pojo.image.push(this.uploadPicture[i]);
                    }
                }
                var im = JSON.stringify(this.pojo.image);
                this.pojo.image = im
                resourceApi.update(this.id, this.pojo).then(response => {
                    this.$message({
                        message: response.message,
                        type: (response.flag ? 'success' : 'error')
                    })
                    if (response.flag) { // 如果成功
                        this.fetchData() // 刷新列表
                        this.fileList = [];
                    }
                })
                this.dialogFormVisible = false // 关闭窗口
            },
            handleRemove(file, fileList) {
                console.log(file, fileList);
            },
            handlePictureCardPreview(file) {

                this.dialogImageUrl = file.url;
                this.dialogVisible = true;
            },
            handleUploadSuccess(response, file, fileList) {
                var total = 0;
                console.log(this.pojo)
                if (this.pojo.image != null ) {
                    total =  fileList.length+this.pojo.image.length;

                }else{
                    total = fileList.length;
                }

                if (total>6) {
                    this.$alert('房源描述最多6张图片', '提示', {
                        confirmButtonText: '确定',
                        callback: action => {
                            this.$message({
                                type: 'info',
                                message: `action: ${action}`
                            });
                        }
                    });
                }else{
                    console.log("---------------")
                    console.log(fileList)
                    this.uploadPicture = [];
                    for (var i = 0; i < fileList.length; i++) {
                        console.log(fileList.length)
                        this.uploadPicture.push("https://1321654.oss-cn-beijing.aliyuncs.com/"+fileList[i].response.src);
                    }
                }
            },
            handleExceed(file, fileList) {

                this.$alert('房源描述最多6张图片', '提示', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `action: ${action}`
                        });
                    }
                });
            },

            deleteImage(src, index) {
                var picture = this.pojo.image;
                console.log(src + "   " + index)
                this.$confirm('确定要删除此图片吗?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    picture.splice(index,1);
                })
                this.pojo.image = picture;
            },
            handleChange(value) {
                console.log(value);
            },
            onSelected(data) {
                this.pojo.province = data.province.value
                this.pojo.city = data.city.value
                this.pojo.county = data.area.value
            },
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
