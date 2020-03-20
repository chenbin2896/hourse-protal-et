import request from '@/utils/request'

export function login(bname, password) {
  return request({
    url: '/rent/user/login',
    method: 'post',
    data: {
      bname,
      password
    }
  })
}

export function getInfo(token) {
  return request({
    url: '/rent/user/info',
    method: 'get',
    params: { token }
  })
}

export function logout() {
  return request({
    url: '/rent/user/logout',
    method: 'post'
  })
}
