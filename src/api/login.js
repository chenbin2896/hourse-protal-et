import request from '@/utils/request'

export function login(username, password,usertype) {
  return request({
    url: '/rent/user/login',
    method: 'post',
    data: {
      username,
      password,
      usertype
    }
  })
}

export function register(pojo) {
  return request({
    url: '/rent/user',
    method: 'post',
    data: pojo
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
