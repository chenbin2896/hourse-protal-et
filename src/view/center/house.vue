<template>
    <div>
      <el-tabs v-model="activeName" @tab-click="handleClick">
        <el-tab-pane label="楼盘" name="newhouse">
            <h2 v-if="focusList.length === 0">暂无关注</h2>
            <el-row v-for="item in focusList" :key = "item.id">
              <el-row>
                <h2 @click="info(item.id)">{{item.house_title}}
                </h2>
              </el-row>
            </el-row>
        </el-tab-pane>
        <el-tab-pane label="二手房" name="oldhouse">
          <h2 v-if="focusList.length === 0">暂无关注</h2>
          <el-row v-for="item in focusList" :key = "item.id">
            <el-row>
              <h2 @click="info(item.id)">{{item.house_title}}
              </h2>
            </el-row>
          </el-row>
        </el-tab-pane>
        <el-tab-pane label="租房" name="renthouse">
          <h2 v-if="focusList.length === 0">暂无关注</h2>
          <el-row v-for="item in focusList" :key = "item.id">
            <el-row>
              <h2 @click="info(item.id)">{{item.house_title}}
              </h2>
            </el-row>
          </el-row>
        </el-tab-pane>
      </el-tabs>
    </div>
</template>

<script>
  import userApi from '@/api/user'
  import { mapGetters } from 'vuex'
    export default {
        name: "house",
        computed: {
            ...mapGetters([
                'name',
                'uid'
            ])

        },
        data() {
            return {
                focusList:[],
                htype:'newhouse',
                activeName: 'newhouse'
            }
        },
        created(){
          this.fetchData()
        },
        methods:{
            fetchData(){
                userApi.getFocus(this.uid,this.htype).then(response=>{
                    this.focusList = response.data
                })
            },
            handleClick(tab, event) {
                this.htype =tab.name
                this.focusList = []
                this.fetchData()
            },
            info(id) {
                this.$router.push({path:'/newHouse/info/'+id})
            }
        }
    }
</script>

<style scoped>

</style>
