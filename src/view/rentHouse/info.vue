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
            <span style="color:#606266;line-height: 30px;">房源维护时间：{{pojo.bailor_time}} </span><br>
            <span style="color:#606266">房源编号：{{pojo.id}} </span>
          </el-row>
          <el-row style="margin-top: 20px;" :gutter="50">
            <el-col :span="14" >
              <div style="width:100%;height:400px;">
                <el-image :src="pojo.image[0]" style="width: 100%;height: 100%"></el-image>
              </div>
            </el-col>
            <el-col :span="10" >
              <div style ="width:100%;height:400px;">
                <el-row>
                  <el-col>
                    <span style="font-weight: bold;font-size: 30px;color: red">{{pojo.rent}}元/月</span>
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
                    <span style="color: #606266;line-height: 26px;">房型：<span>{{pojo.type}}</span></span>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col>
                    <span style="color: #606266;line-height: 26px;">所在楼层：<span>{{pojo.floor}}</span></span>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col>
                    <span style="color: #606266;line-height: 26px;">房屋朝向：<span>{{pojo.orientation}}</span></span>
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
                    <el-button type="success" style="margin: 10px;" size="medium" @click="sendMessage(agent.id)">在线咨询</el-button>
                  </el-col>
                </el-row>
              </div>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="10">真实存在，真实在租，真实价格，假一赔百</el-col>
            <el-col :span="6" style="text-align: right">
              <span @click="reportFlag = true" style="cursor: pointer">我要举报</span>
            </el-col>
          </el-row>
          <el-row>
            <h2>房屋信息</h2>
            <el-row>
              <el-col :span="4">
                <span>基本信息</span>
              </el-col>
              <el-col :span="6">
                <el-row style="line-height: 30px;">房屋户型：{{pojo.type}}</el-row>
                <el-row style="line-height: 30px;">租房方式：{{pojo.rent_way}}</el-row>
                <el-row style="line-height: 30px;">委托人：{{pojo.bailor}}</el-row>
                <el-row style="line-height: 30px;">房屋朝向：{{pojo.orientation}}</el-row>
                <el-row style="line-height: 30px;">房屋面积：{{pojo.square}}</el-row>
                <el-row style="line-height: 30px;">配套电梯：{{pojo.elevator}}</el-row>

              </el-col>
              <el-col :span="6">
                <el-row style="line-height: 30px;">所在楼层：{{pojo.floor}}</el-row>
                <el-row style="line-height: 30px;">租期：{{pojo.tenancy}}</el-row>
                <el-row style="line-height: 30px;">取暖：{{pojo.heater}}</el-row>
                <el-row style="line-height: 30px;">燃气：{{pojo.gas}}</el-row>
                <el-row style="line-height: 30px;">用电：{{pojo.electricity}}</el-row>
              </el-col>
            </el-row>
            <el-row style="margin-top: 20px">
              <el-col :span="4">
                <span>看房</span>
              </el-col>
              <el-col :span="6">
                <el-button type="primary" size="middle" @click="requestHouseFlag = true">预约看房</el-button>

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
            <el-row style="margin-bottom: 20px;" :gutter="50">
              <el-col :span="8" style="line-height: 28px" v-for="item in pojo.image" :key="item.id">
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
                      <span><el-button type="success" size="mini" @click="sendMessage(item.id)">在线咨询</el-button></span>
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
        <el-dialog
          title="在线咨询"
          :visible.sync="centerDialogVisible"
          width="30%"
          center>
          <div style="background: #f2f2f2;height: 400px;overflow: auto;padding: 10px" >
            <el-row>
              <h3>{{data}}</h3>
            </el-row>
            <div v-html="content"></div>
          </div>
          <div style="margin-top: 20px">
            <el-input
              type="textarea"
              autosize
              placeholder="请输入内容"
              v-model="messagePojo.msg">
            </el-input>
          </div>

          <span slot="footer" class="dialog-footer">
    <el-button @click="centerDialogVisible = false">关闭</el-button>
    <el-button type="success" @click="send">发送</el-button>
  </span>
        </el-dialog>
        <el-dialog
          title="预约看房"
          :visible.sync="requestHouseFlag"
          width="30%"
          center>
          <div style="background: #fff;height: 400px;overflow: auto;padding: 10px">
            <el-form label-width="80px" :model="request" :rules="loginRules" ref="loginForm">
              <el-form-item label="姓名" prop="bname">
                <el-input v-model="request.bname"></el-input>
              </el-form-item>
              <el-form-item label="手机号" prop="mobile">
                <el-input v-model="request.mobile"></el-input>
              </el-form-item>
              <el-form-item label="预约时间" prop="request_date">
                <el-date-picker v-model="request.request_date" value-format="yyyy-MM-dd"></el-date-picker>
              </el-form-item>
              <el-form-item>
                <el-button type="primary" @click.native.prevent="submitRequest">提交</el-button>
                <el-button @click="requestHouseFlag = false">关闭</el-button>
              </el-form-item>

            </el-form>
          </div>
        </el-dialog>
        <el-dialog
          title="房源举报"
          :visible.sync="reportFlag"
          width="30%"
          center>
          <div style="background: #fff;height: 400px;overflow: auto;padding: 10px">
            <el-form label-width="80px" :model="request" :rules="loginRules" ref="loginForm">
              <el-form-item label="举报说明">
                <el-input v-model="report.report_content"></el-input>
              </el-form-item>
              <el-form-item>
                <el-button type="primary" @click="submitReport">提交</el-button>
                <el-button @click="reportFlag = false">关闭</el-button>
              </el-form-item>

            </el-form>
          </div>
        </el-dialog>
      </div>
    </div>


</template>

<script type="text/javascript">
  import cheader from "@/components/newheader";
  import resourceApi from "@/api/resource";
  import reportApi from "@/api/report";
  import informationApi from "@/api/information";
  import requestApi from "@/api/request";
  import BMap from 'BMap'
  import { mapGetters } from 'vuex'
    export default {
        name: "info",
        computed: {
            ...mapGetters([
                'name',
                'uid'
            ])

        },
        data () {
            return {
                center: {lng: 0, lat: 0},
                zoom: 3,
                pojo: {},
                agent:{},
                agents:[],
                activeIndex:'/oldHouse/info',
                centerDialogVisible: false,
                messageAgent:{},
                messagePojo:{
                    toId:'',
                    msg:''
                },
                websocket: null,
                data:'',
                content:'',
                requestHouseFlag: false,
                request:{},
                report:{},
                loginRules: {
                    bname: [
                        {required: true, message: '请输入联系人姓名', trigger: 'blur'}

                    ],
                    mobile: [
                        {required: true, message: '请输入手机号', trigger: 'blur'},
                        {min: 11, max: 11, message: '请输入长度为11位的手机号', trigger: 'blur'}
                    ],
                    request_date: [
                        {required: true, message: '请输入看房时间', trigger: 'blur'}

                    ],
                },
                reportFlag: false
            }
        },
        mounted() {
            console.log(this.$route.params.id)
            this.ready()
            if ('WebSocket' in window) {
                this.websocket = new WebSocket('ws://cyichen.mynatapp.cc/rent/ws/'+this.uid)
                this.initWebSocket()
            } else {
                alert('当前浏览器 Not support websocket')
            }
        },
        beforeDestroy() {
            this.onbeforeunload()
        },
        methods :{
            handler ({BMap, map}) {
                console.log(BMap, map)
                this.center.lng = 116.404
                this.center.lat = 39.915
                this.zoom = 15
            },
            ready() {
                resourceApi.findById(this.$route.params.id).then(response=>{
                    this.pojo = response.data
                })
                informationApi.getList().then(response=>{
                    this.agent = response.data[0]
                    this.agents = response.data
                })

            },
            sendMessage(id) {
                if (this.uid) {
                    informationApi.findById(id).then(response => {
                        this.messageAgent = response.data
                    })
                    this.content = ''
                    this.centerDialogVisible = true
                } else {
                    this.$router.push({path: '/login'})
                }


            },
            initWebSocket() {
                //连接错误
                this.websocket.onerror = this.setErrorMessage

                // //连接成功
                this.websocket.onopen = this.setOnopenMessage

                //收到消息的回调
                this.websocket.onmessage = this.setOnmessageMessage

                //连接关闭的回调
                this.websocket.onclose = this.setOncloseMessage

                //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
                window.onbeforeunload = this.onbeforeunload
            },
            setErrorMessage() {
                this.data = "WebSocket连接发生错误" + '   状态码：' + this.websocket.readyState;
            },
            setOnopenMessage() {
                this.data = "WebSocket连接成功" + '   状态码：' + this.websocket.readyState;
            },
            setOnmessageMessage(event) {
                //this.data = '服务端返回：' + event.data;
                var temp = JSON.parse(event.data)
                this.content+="<el-row>\n" +
                    "            <span style=\"padding: 10px\">"+this.messageAgent.bname+"【万径经纪人】</span><br>\n" +
                    "            <span style=\"line-height: 30px;display: block;background: #fff;width: 45%;border-radius: 5px;margin: 10px;padding:5px\">"+temp.msg+"</span>\n" +
                    "          </el-row>"
            },
            setOncloseMessage() {
                this.data = "WebSocket连接关闭" + '   状态码：' + this.websocket.readyState;
            },
            onbeforeunload() {
                this.closeWebSocket();
            },

            //websocket发送消息
            send() {
                this.messagePojo.toId = this.messageAgent.id
                this.websocket.send(JSON.stringify(this.messagePojo))
                this.content+="<div style='width: 100%;height: auto'><div style=\"text-align: right;line-height: 10px;margin: 10px\">\n" +
                    "            <div style=\"padding: 10px;\">"+this.uid+"</div>\n" +
                    "            <div style=\"line-height: 30px;background: #fff;margin-left:55%;width: 45%;border-radius: 5px;padding:5px\">"+this.messagePojo.msg+"</div>\n" +
                    "          </div></div>"
                this.messagePojo.msg = ''

            },
            closeWebSocket() {
                this.websocket.close()
            },
            submitRequest() {
                console.log(this.request)
                this.$refs.loginForm.validate(valid => {
                    if (valid) {
                        requestApi.save(this.request).then(response=>{
                            this.$message({
                                message: response.message,
                                type: (response.flag ? 'success' : 'error')
                            })
                            this.requestHouseFlag = false
                        })
                    } else {
                        console.log('error submit!!');
                        return false
                    }
                })

            },
            submitReport(){
                if (this.uid) {
                    this.report.house_id = this.$route.params.id
                    this.report.user_id = this.uid
                    reportApi.save(this.report).then(response=>{
                        this.$message({
                            message: response.message,
                            type: (response.flag ? 'success' : 'error')
                        })
                        this.reportFlag = false
                    })
                } else {
                    this.$router.push({path: '/login'})
                }
            }
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
