<template>
  <div>
    <el-container class="cbody">
      <el-header>
        <el-row class="cheader" type="flex" justify="center">
          <el-col
            :span="4"
            style="font-size: 32px;cursor: pointer;font-weight: bold;font-family: Arial, Helvetica, 'Microsoft YaHei', Tohoma, sans-serif"
          >万径房产</el-col>
          <el-col :span="2">
            <span>
              <i class="el-input__icon el-icon-location-outline"></i>
              {{city}}
            </span>
          </el-col>
          <el-col :span="1" :offset="2" style="cursor: pointer">
            <span @click="send('/newHouse')">新房</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/oldHouse')">二手房</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/rentHouse')">租房</span>
          </el-col>
          <el-col :span="2" style="cursor: pointer">
            <span @click="business()">商业办公</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/agent')">经纪人</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/housePrice')">房价</span>
          </el-col>
          <el-col :span="1" style="cursor: pointer">
            <span @click="send('/tool')">工具</span>
          </el-col>
          <el-col :span="2" style="cursor: pointer">
            <span @click="send('/publish')">发布房源</span>
          </el-col>
        </el-row>
      </el-header>
      <el-main style="padding-top: 100px;">
        <el-row type="flex" justify="center">
          <el-col :span="8" style="text-align: center">
            <h1 style="color: #fff;font-size: 48px;">连接每个家的故事</h1>
          </el-col>
        </el-row>
        <el-row type="flex" justify="center">
          <el-col :span="8" style="text-align: center">
            <span style="color:#fff;cursor:pointer;padding-left:20px;" @click="searchType('oldHouse')">找二手房</span>
            <span style="color:#fff;cursor:pointer;padding-left:20px;" @click="searchType('newHouse')">找新房</span>
            <span style="color:#fff;cursor:pointer;padding-left:20px;" @click="searchType('rentHouse')">找租房</span>
          </el-col>
        </el-row>

        <el-row class="csearch" type="flex" justify="center">
          <el-col :span="8">
            <el-input
              :placeholder="searchPlaceHolder"
              v-model="searchContent"
              class="input"
              style="border-radius: 0px;"
            ></el-input>
          </el-col>
          <el-button type="success" class="cbtn-bg" @click="searchHouse">开始找房</el-button>
        </el-row>
      </el-main>
    </el-container>
    <el-container>
      <div style="width:50%;margin:20px auto;height: 200px;">
        <el-row>
          <el-col :span="12" style="text-align: center;">
            <el-row>
              <el-image
                :src="require('../../assets/25be787db406f85a8c1ed76bce2c8b1c.png')"
                style="width:80px;height:80px"
              ></el-image>
            </el-row>
            <el-row style="line-height:40px;font-size:18px;">
              <span @click="send('/oldHouse')" style="cursor:pointer">找二手房</span>
            </el-row>
            <el-row style="line-height:40px;font-size:12px;color:grey">真实二手房源，万径承诺真实在售 所见即真</el-row>
          </el-col>
          <el-col :span="12" style="text-align: center;" >
            <el-row>
              <el-image :src="require('../../assets/phphnmv10.png')" style="width:80px;height:80px"></el-image>
            </el-row>
            <el-row style="line-height:40px;font-size:18px;" >
              <span @click="send('/tool')" style="cursor:pointer" >购房计算器</span>
            </el-row>
            <el-row style="line-height:40px;font-size:12px;color:grey">复杂的房贷税费计算，万径购房工具帮你解决</el-row>
          </el-col>
        </el-row>
      </div>
    </el-container>

    <el-container>
      <el-main>
        <el-row class="capp">
          <el-col :span="6" :offset="4">
            <el-row style="padding-top: 100px;">
              <h2 style="font-weight: normal;font-size: 30px">万径房产</h2>
            </el-row>
            <el-row>
              <h1 style="font-size: 50px">为你为家</h1>
            </el-row>
            <el-row>
              <span>集二手、新房、租房功能于一体，随时随地任性找房。IM匿名咨询让您放心，消息动态推送让您省心，服务承诺让您安心，数据百科锦囊让您感受贴心漫漫找房路，我们努力为您想更多。</span>
            </el-row>
            <el-row>
              <el-col :span="6">
                <el-row style="padding-top: 20px;">
                  <el-button type="success" class="cbtn-bg" style="width: 100px;height: 40px">iPhone</el-button>
                </el-row>
                <el-row style="padding-top: 20px;">
                  <el-button type="success" class="cbtn-bg" style="width: 100px;height: 40px">iPhone</el-button>
                </el-row>
              </el-col>
              <el-col :span="12">
                <el-row style="padding-top: 20px;">
                  <el-image :src="getDownloadImage" style="width: 100px;height: 100px;"></el-image>
                </el-row>
              </el-col>
            </el-row>
          </el-col>
        </el-row>
      </el-main>
    </el-container>

    <!--二手房-->
    <el-container>
      <el-header>
        <el-row style="width: 100%">
          <el-col :span="10" :offset="4">
            <el-row>
              <span style="font-size: 30px;font-weight: bold;">二手好房</span>&nbsp;&nbsp;
              <span style="font-size: 28px">为你二选</span>
            </el-row>
            <el-row>
              <span style="line-height: 40px">好房源那么多，我们为你精选，链家网会越来越懂你</span>
            </el-row>
          </el-col>
          <el-col :span="6" style="text-align: right">
            <el-row>
              <span>更多北京好房</span>
            </el-row>
          </el-col>
        </el-row>
      </el-header>
      <el-main>
        <el-row type="flex" justify="center" :gutter="40">
          <el-col :span="4" v-for="item in list" :key="item.id" style="cursor:pointer" @click.native="info(item.id)">
            <el-row style="text-align: center">
              <el-image :src="item.house_image[0]" style="width: 100%;height: 230px;"></el-image>
            </el-row>
            <el-row class="crow">
              <span>{{item.city}}-</span>
              <span>{{item.county}}</span>
            </el-row>
            <el-row class="crow">
              <span style="font-weight:bold">{{item.house_title}}</span>
            </el-row>
            <el-row class="crow">
              <el-col :span="12">
                <span>{{item.house_type}}</span>
                <span>{{item.area}}</span>
              </el-col>
              <el-col :span="12" style="text-align: right">
                <span style="color: red">{{item.house_price}}万</span>
              </el-col>
            </el-row>
          </el-col>
        </el-row>
      </el-main>
    </el-container>
    <el-row class="cefooter">
      <el-col :span="10" :offset="4">
        <el-row>
          <h1 style="color: #fff;font-size: 50px;">万径真实房源</h1>
        </el-row>
        <el-row style="color: #fff;font-size: 30px">不是嘴上说说就可以</el-row>
      </el-col>
      <el-col :span="10">
        <el-row>
          <span style="color: #fff;font-size: 16px;line-height:100px;">真实存在，真实在售，真实价格，真实图片！</span>
        </el-row>
        <el-row style="color: #fff;font-size: 16px">链家郑重向用户承诺：真实房源，假一赔百元！</el-row>
      </el-col>
    </el-row>
    <cfooter></cfooter>
  </div>
</template>
<script>
import oldHouseApi from "@/api/oldhouse";
(function(m, ei, q, i, a, j, s) {
  m[i] =
    m[i] ||
    function() {
      (m[i].a = m[i].a || []).push(arguments);
    };
  (j = ei.createElement(q)), (s = ei.getElementsByTagName(q)[0]);
  j.async = true;
  j.charset = "UTF-8";
  j.src = "https://static.meiqia.com/dist/meiqia.js?_=t";
  s.parentNode.insertBefore(j, s);
})(window, document, "script", "_MEIQIA");
_MEIQIA("entId", "204239");
//_MEIQIA('manualInit');
import BMap from "BMap";
import cfooter from "@/components/cfooter";
export default {
  name: "index",
  components: {
    cfooter: cfooter
  },
  data() {
    return {
      city: "",
      searchPlaceHolder:'请输入楼盘名称开始找房',
      houseType: "oldHouse",
      searchMap: {},
      list: [],
      activeIndex: "1",
      activeIndex2: "1",
      searchContent: "",
      getDownloadImage:
        "https://ajax.api.lianjia.com/qr/getDownloadQr?location=site_middle&ljweb_channel_key=site_index",
      ershouImage:
        "http://117.51.142.27:9003/5eb404d9-76d8-4048-ad69-24ef1243fa67.jpg"
    };
  },
  mounted() {
    this.ready();
    this.initOldHose();
  },
  methods: {
    ready() {
      var geolocation = new BMap.Geolocation();
      geolocation.getCurrentPosition(
        r => {
          console.log(r.address.city);
          this.city = r.address.city;
        },
        { enableHighAccuracy: true }
      );
    },
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
      this.$router.push({ path: key });
    },
    send(path) {
      this.$router.push({ path: path });
    },
    business() {
      window.location.href = "https://shangye.lianjia.com/bj/xzl/rent/mlist";
    },
    initOldHose() {
      oldHouseApi.search(1, 4, this.searchMap).then(response => {
        this.list = response.data.rows;
      });
    },
    searchType(type) {
      this.houseType = type;

      if(type === 'newHouse') {
        this.searchPlaceHolder = '请输入楼盘名称开始找房';
      }else {
        this.searchPlaceHolder = '请输入区域、商区或小区名开始找房';
      }


    },
    info(id) {
        this.$router.push('/oldHouse/info/'+id)
    },
    searchHouse(){
      this.$router.push('/'+this.houseType+'/'+this.searchContent)
    }
  }
};
</script>

<style scoped>
.cbody {
  background-image: url("../../assets/img/bannerV2.jpg");
  width: 100%;
  height: 700px;
  background-size: 100% 100%;
  background-repeat: no-repeat;
}
.cheader {
  width: 100%;
  line-height: 100px;
  color: #fff;
  text-align: center;
}
.csearch {
  width: 100%;
  padding-top: 10px;
}
.el-input__inner {
  border-radius: 0px;
}
.capp {
  width: 100%;
  height: 600px;
  background-image: url("../../assets/img/bg-app.jpg");
  background-repeat: no-repeat;
}
.cbtn-bg {
  background: #00ae66;
  border: none;
  border-radius: 0px;
  height: 50px;
  width: 140px;
  font-size: 18px;
}
.cefooter {
  width: 100%;
  height: 260px;
  background-image: url("../../assets/img/truth-bgV2.jpg");
}

.input >>> .el-input__inner {
  height: 50px;
  border-radius: 0px;
}

.crow {
  padding: 10px 0px;
}

.citem{
  background: none;
  color: #fff;
}
</style>
