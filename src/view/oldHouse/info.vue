<template>
    <div>
      <cheader></cheader>
      <div style="height: 180px;background: #f5f5f6;width: 100%">
        <div style="width: 60%;margin:  0 auto;">
          <el-row>
            <el-col :span="5" style="padding-left:15px;">
              <h2 style="color: #00ae66;">万径房产</h2>
            </el-col>
            <el-col :span="19" style="text-align: right">
              <span style="line-height: 70px">下载万径APP</span>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="14" style="padding-top: 10px;padding-left:15px;">
              <h2>{{pojo.house_title}}</h2>
            </el-col>

          </el-row>

        </div>
      </div>
      <div style="width: 60%;margin: 0 auto;">
      <el-container>
        <el-main >
          <el-row>
<!--            <h1>{{pojo.house_title}}</h1>-->
          </el-row>
          <el-row>
            <span style="color:#606266;line-height: 30px;">房源维护时间：{{pojo.hang_time}} </span><br>
            <span style="color:#606266">房源编号：{{pojo.id}} </span>
          </el-row>
          <el-row style="margin-top: 20px;" gutter="50">
            <el-col :span="14" >
              <div style="width:100%;height:400px;">
                <el-image :src="pojo.house_image[0]" style="width: 100%;height: 100%"></el-image>
              </div>
            </el-col>
            <el-col :span="10" >
              <div style ="width:100%;height:400px;">
                <el-row>
                  <el-col>
                    <span style="font-weight: bold;font-size: 30px;color: red">{{pojo.house_price}}万</span>
                  </el-col>
                </el-row>
                <el-row style="margin-top: 20px">
                  <el-col>
                    <el-tag size="mini">近地铁</el-tag>
                  </el-col>
                </el-row>
                <el-divider></el-divider>
                <el-row>
                  <el-col>
                    <span style="color: #606266;line-height: 26px;">房型：<span>{{pojo.house_type}}</span></span>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col>
                    <span style="color: #606266;line-height: 26px;">小区名称：<span>{{pojo.estate}}</span></span>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col>
                    <span style="color: #606266;line-height: 26px;">所在区域：<span>{{pojo.region}}</span></span>
                  </el-col>
                </el-row>
                <el-divider></el-divider>
                <el-row >
                  <el-col :span="6">
                    <el-image style="width: 80px;height: 80px;border-radius: 50%" :src="agent.photograph"></el-image>
                  </el-col>
                  <el-col :span="12">
                    <el-row><h3>{{agent.bname}}</h3></el-row>
                    <el-row>链家经纪人</el-row>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col :span="24">
                    <el-button type="success" style="margin: 10px;" size="medium">在线咨询</el-button>
                  </el-col>
                </el-row>
              </div>
            </el-col>
          </el-row>
          <el-row>
            <h2>房屋信息</h2>
            <el-row>
              <el-col :span="4">
                <span>基本信息</span>
              </el-col>
              <el-col :span="6">
                <el-row style="line-height: 30px;">房屋户型：{{pojo.house_type}}</el-row>
                <el-row style="line-height: 30px;">建筑面积：{{pojo.area}}</el-row>
                <el-row style="line-height: 30px;">套内面积：{{pojo.area}}</el-row>
                <el-row style="line-height: 30px;">房屋朝向：{{pojo.orientation}}</el-row>
                <el-row style="line-height: 30px;">装修情况：{{pojo.fitment}}</el-row>
                <el-row style="line-height: 30px;">配套电梯：{{pojo.elevator}}</el-row>

              </el-col>
              <el-col :span="6">
                <el-row style="line-height: 30px;">所在楼层：{{pojo.floor}}</el-row>
                <el-row style="line-height: 30px;">户型结构：暂无数据</el-row>
                <el-row style="line-height: 30px;">建筑类型：板楼</el-row>
                <el-row style="line-height: 30px;">建筑结构：砖混结构</el-row>
                <el-row style="line-height: 30px;">梯户比例：{{pojo.door}}</el-row>
              </el-col>
            </el-row>
            <el-row style="margin-top: 20px">
              <el-col :span="4">
                <span>看房</span>
              </el-col>
              <el-col :span="6">
                <el-button type="primary" size="mini">预约看房</el-button>

              </el-col>

            </el-row>
          </el-row>
          <el-row>
            <h2>房源描述</h2>
            <el-row style="margin-bottom: 20px;">
              <el-col :span="12" style="line-height: 28px">
                {{pojo.house_desc}}
              </el-col>
            </el-row>
          </el-row>
          <el-row>
            <h2>房源照片</h2>
            <el-row style="margin-bottom: 20px;" gutter="50">
              <el-col :span="8" style="line-height: 28px" v-for="item in pojo.house_image" :key="item.id">
                <el-image :src="item" style="width: 100%;height: 100%"></el-image>
              </el-col>
            </el-row>
          </el-row>
          <el-row style="margin-bottom: 20px">
            <h2>费用详情</h2>
            <el-row>
              <h4>年租价 当租期不足1年时租金可能会上浮，详询管家</h4>
            </el-row>
            <el-row style="line-height: 44px;">
              <el-col :span="4">付款方式</el-col>
              <el-col :span="4">租金 (元/月)</el-col>
              <el-col :span="4">押金 (元)</el-col>
              <el-col :span="4">服务费 (元)</el-col>
              <el-col :span="4">中介费 (元)</el-col>
            </el-row>
            <el-row>
              <el-col :span="4">季付</el-col>
              <el-col :span="4">3300</el-col>
              <el-col :span="4">3300</el-col>
              <el-col :span="4">3300</el-col>
              <el-col :span="4">3300</el-col>
            </el-row>
          </el-row>
          <el-row>
            <h2>推荐经纪人</h2><span>您可以通过拨打电话或在线咨询的方式联系经纪人</span>
            <el-row style="line-height: 44px;margin-top: 20px;">
              <el-col :span="8" v-for="item in agents" :key="item.id">
                <el-card shadow="never">
                  <el-row>
                    <el-col :span="10">
                      <el-image :src="item.photograph"></el-image>
                    </el-col>
                    <el-col :span="12">
                      <span>{{item.bname}}</span><br>
                      <span>评分:{{item.grade}} | 20次评价</span>
                      <span>{{item.contact}}</span>
                      <span><el-button type="success" size="mini">在线咨询</el-button></span>
                    </el-col>
                  </el-row>
                </el-card>
              </el-col>

            </el-row>
            <el-row>
              <h2>地址和交通</h2>
              <el-row>
                <baidu-map style="width: 100%;height: 300px" :center="center" :zoom="zoom" @ready="handler">
                </baidu-map>
              </el-row>
            </el-row>
          </el-row>
        </el-main>

      </el-container>
      </div>
    </div>


</template>

<script type="text/javascript">
  import cheader from "@/components/newheader";
  import oldHouseApi from "@/api/oldhouse";
  import informationApi from "@/api/information";
  import BMap from 'BMap'
    export default {
        name: "info",
        data () {
            return {
                center: {lng: 0, lat: 0},
                zoom: 3,
                pojo: {},
                agent:{},
                agents:[],
                activeIndex:'/oldHouse/info'
            }
        },
        mounted() {
            console.log(this.$route.params.id)
            this.ready()
        },
        methods :{
            handler ({BMap, map}) {
                console.log(BMap, map)
                this.center.lng = 116.404
                this.center.lat = 39.915
                this.zoom = 15
            },
            ready() {
                oldHouseApi.findById(this.$route.params.id).then(response=>{
                    this.pojo = response.data
                })
                informationApi.getList().then(response=>{
                    this.agent = response.data[0]
                    this.agents = response.data
                })

            },
        },
        components:{
            cheader
        },


    }
</script>

<style scoped>
 span{
   color: #606266;
 }
</style>
