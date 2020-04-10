import request from '@/utils/request'
const group_name = 'rent'
const api_name = 'statistic'
export default {
  renthousecount() {
    return request({
      url: `/${group_name}/${api_name}/house/rent`,
      method: 'get'
    })
  },
  newhousecount() {
    return request({
      url: `/${group_name}/${api_name}/house/new`,
      method: 'get'
    })
  },
  oldhousecount() {
    return request({
      url: `/${group_name}/${api_name}/house/old`,
      method: 'get'
    })
  },

  renthousemap(){
    return request({
      url: `/${group_name}/${api_name}/house/map/rent`,
      method: 'get'
    })
  },
  renthousemapCounty(){
    return request({
      url: `/${group_name}/${api_name}/house/map/rent/county`,
      method: 'get'
    })
  },
  newhousemapCounty(){
    return request({
      url: `/${group_name}/${api_name}/house/map/new/county`,
      method: 'get'
    })
  },
  oldhousemapCounty(){
    return request({
      url: `/${group_name}/${api_name}/house/map/old/county`,
      method: 'get'
    })
  }


}
