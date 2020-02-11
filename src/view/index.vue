<template>
  <div>
    <cheader></cheader>
    <div>
      <el-container>
        <el-main style="margin-left:50px; ">
          <el-row style="margin-bottom: 50px;">
            <el-col :span="10" :offset="3" style="height: 40px;margin-top:30px;">
              <el-input v-model="input" placeholder="请输入区域、商圈或小区名开始找房"><i slot="suffix" class="el-input__icon el-icon-search"></i></el-input>
            </el-col>
          </el-row>
         <el-row>
           <el-col :span="24">
             <span>按区域</span>
             <el-link :underline="false" style="font-weight: bold">不限</el-link>
             <el-link :underline="false" >无下划线</el-link>
             <el-link :underline="false">无下划线</el-link>
             <el-link :underline="false">无下划线</el-link>
           </el-col>
         </el-row>
          <el-row>
            <el-col :span="24">
              <span>方式</span>
              <el-link :underline="false" style="font-weight: bold">不限</el-link>
              <el-link :underline="false" >无下划线</el-link>
              <el-link :underline="false">无下划线</el-link>
              <el-link :underline="false">无下划线</el-link>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="24">
              <span>租金</span>
              <el-link :underline="false" style="font-weight: bold">不限</el-link>
              <el-radio-group v-model="radioResult">
                <el-radio :label="3">备选项</el-radio>
                <el-radio :label="6">备选项</el-radio>
                <el-radio :label="9">备选项</el-radio>
              </el-radio-group>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="24">
              <span>租金</span>
              <el-link :underline="false" style="font-weight: bold">不限</el-link>
              <el-radio-group v-model="radioResult">
                <el-radio :label="3">备选项</el-radio>
                <el-radio :label="6">备选项</el-radio>
                <el-radio :label="9">备选项</el-radio>
              </el-radio-group>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="24">
              <span>租金</span>
              <el-link :underline="false" style="font-weight: bold">不限</el-link>
              <el-radio-group v-model="radioResult">
                <el-radio :label="3">备选项</el-radio>
                <el-radio :label="6">备选项</el-radio>
                <el-radio :label="9">备选项</el-radio>
              </el-radio-group>
            </el-col>
          </el-row>
          <el-divider>
          </el-divider>
          <el-row>
            <el-col>
              <span>已为您找到<span style="color: darkgreen"> 8</span>套房</span>
            </el-col>
          </el-row>
          <el-row style="margin-top: 20px;">
            <el-col :span="24">
              <el-tabs v-model="activeName" @tab-click="handleClick">
                <el-tab-pane label="综合排序" name="first">
                  <el-row>
                    <el-col :span="3" style="height: 180px;margin-right:20px;border: 1px red solid"></el-col>
                    <el-col :span="10" style="height: 180px;margin-right:20px;border: 1px red solid">
                      <el-row style="height: 40px;">
                        <el-link @click="info(1)" :underline="false" style="font-size: 18px;font-weight: bold">整租>开阳里七区 1室厅 东/西</el-link>
                      </el-row>
                      <el-row style="height: 40px;">
                        <el-link :underline="false">整租>开阳里七区 1室厅 东/西</el-link>
                      </el-row>
                      <el-row style="height: 60px;line-height: 60px;">
                        <el-link :underline="false"><el-tag size="mini">标签一</el-tag></el-link>
                        <el-link :underline="false"><el-tag size="mini">标签一</el-tag></el-link>
                        <el-link :underline="false"><el-tag size="mini">标签一</el-tag></el-link>
                        <el-link :underline="false"><el-tag size="mini">标签一</el-tag></el-link>

                      </el-row>
                      <el-row style="height: 40px;line-height: 40px;">

                        <i class="el-icon-time"></i>
                        <span style="font-weight: normal;font-size: 12px;color: #333333">23天前维护</span>

                      </el-row>

                    </el-col>
                    <el-col :span="5" style="height: 180px;border: 1px red solid">
                        <span style="font-size:28px;color: darkgreen">5000<span>元/月</span></span>
                    </el-col>
                  </el-row>
                </el-tab-pane>
                <el-tab-pane label="最新上架" name="second">
                  <el-row>
                    <el-col :span="3" style="height: 180px;margin-right:20px;border: 1px red solid"></el-col>
                    <el-col :span="10" style="height: 180px;margin-right:20px;border: 1px red solid">
                      <el-row style="height: 40px;">
                        <h4>整租>开阳里七区 1室厅 东/西</h4>
                      </el-row>
                      <el-row style="height: 40px;">
                        <h5>整租>开阳里七区 1室厅 东/西</h5>
                      </el-row>
                      <el-row style="height: 60px;line-height: 60px;">
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>

                      </el-row>
                      <el-row style="height: 40px;line-height: 40px;">
                        <i class="el-icon-time"></i>
                        <span style="font-weight: normal;font-size: 12px;color: #333333">23天前维护</span>

                      </el-row>

                    </el-col>
                    <el-col :span="5" style="height: 180px;border: 1px red solid">
                      <span style="font-size:28px;color: darkgreen">5000<span>元/月</span></span>
                    </el-col>
                  </el-row>
                </el-tab-pane>
                <el-tab-pane label="价格" name="third">
                  <el-row>
                    <el-col :span="3" style="height: 180px;margin-right:20px;border: 1px red solid"></el-col>
                    <el-col :span="10" style="height: 180px;margin-right:20px;border: 1px red solid">
                      <el-row style="height: 40px;">
                        <h4>整租>开阳里七区 1室厅 东/西</h4>
                      </el-row>
                      <el-row style="height: 40px;">
                        <h5>整租>开阳里七区 1室厅 东/西</h5>
                      </el-row>
                      <el-row style="height: 60px;line-height: 60px;">
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>

                      </el-row>
                      <el-row style="height: 40px;line-height: 40px;">
                        <i class="el-icon-time"></i>
                        <span style="font-weight: normal;font-size: 12px;color: #333333">23天前维护</span>

                      </el-row>

                    </el-col>
                    <el-col :span="5" style="height: 180px;border: 1px red solid">
                      <span style="font-size:28px;color: darkgreen">5000<span>元/月</span></span>
                    </el-col>
                  </el-row>
                </el-tab-pane>
                <el-tab-pane label="面积" name="fourth">
                  <el-row>
                    <el-col :span="3" style="height: 180px;margin-right:20px;border: 1px red solid"></el-col>
                    <el-col :span="10" style="height: 180px;margin-right:20px;border: 1px red solid">
                      <el-row style="height: 40px;">
                        <h4>整租>开阳里七区 1室厅 东/西</h4>
                      </el-row>
                      <el-row style="height: 40px;">
                        <h5>整租>开阳里七区 1室厅 东/西</h5>
                      </el-row>
                      <el-row style="height: 60px;line-height: 60px;">
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>
                        <el-tag size="mini">标签一</el-tag>

                      </el-row>
                      <el-row style="height: 40px;line-height: 40px;">
                        <i class="el-icon-time"></i>
                        <span style="font-weight: normal;font-size: 12px;color: #333333">23天前维护</span>

                      </el-row>

                    </el-col>
                    <el-col :span="5" style="height: 180px;border: 1px red solid">
                      <span style="font-size:28px;color: darkgreen">5000<span>元/月</span></span>
                    </el-col>
                  </el-row>
                </el-tab-pane>
              </el-tabs>
            </el-col>

          </el-row>

        </el-main>
      </el-container>

    </div>
  </div>

</template>

<script>
  import cheader from "../components/cheader";
    export default {
        name: "index",

        components : {
            cheader
        },
        data () {
            return{
                radioResult:'',
                activeName: 'first'
            }
        },
        methods: {
            handleClick(tab, event) {
                console.log(tab, event);
            },
            info(id){
                this.$router.push({path:'/info/'+id})
            }
        }

    }
</script>

<style scoped>
  .el-link{
    margin: 10px;
  }
  .el-radio{
    margin: 10px;
  }
  span{
    font-size: 14px;
    font-weight: bold;
  }
</style>
