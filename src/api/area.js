import request from '@/utils/request'
const group_name = 'rent'
const api_name = 'area'
export default {
  getCenter(name) {
    return request({
      url: `/${group_name}/${api_name}/name`,
      method: 'get'
    })
  }
}
