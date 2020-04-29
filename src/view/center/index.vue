<template>
  <div>
    <newheader></newheader>
    <div style="overflow: auto;">
      <div style="width: 60%;margin: 0 auto">
        <el-container style="border: 1px #f2f2f2 solid">
          <el-main>
            <el-row>
              <el-col span="4">
                <el-row style="height: 80px">
                  欢迎你：{{name}}
                </el-row>
                <el-row>
                  <span @click="tab('house')" style="cursor: pointer">关注的房源</span>
                </el-row>
              </el-col>
              <el-col span="20" >
                <router-view></router-view>
              </el-col>
            </el-row>
          </el-main>
        </el-container>

      </div>

    </div>
    <cfooter style="position: absolute;bottom: 0px"></cfooter>
  </div>
</template>

<script>
  import newheader from '@/components/newheader';
  import cfooter from "@/components/cfooter";
  import { mapGetters } from 'vuex'
  export default {
    name: "index",
    computed: {
        ...mapGetters([
            'name'
        ])

    },
    components: {
      newheader: newheader,
      cfooter: cfooter
    },
      methods: {
        tab(value){
            this.$router.push({path:'/center/'+value})
        }
      }
  }
</script>

<style scoped>
span{
  line-height: 40px;
}
</style>
