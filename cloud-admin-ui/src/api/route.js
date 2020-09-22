import request from '@/libs/request'

/**
 * 获取接口列表
 * @param page
 * @param limit
 */
export const getRoutes = ({ page, limit }) => {
  const params = { page: page, limit: limit }
  return request({
    url: 'base/gateway/route',
    params,
    method: 'get'
  })
}

/**
 * 添加接口
 * @param apiCode
 * @param apiName
 * @param apiCategory
 * @param serviceId
 * @param path
 * @param status
 * @param priority
 * @param apiDesc
 * @param isOpen
 * @param isAuth
 */
export const addRoute = ({ path, serviceId, url, stripPrefix, retryable, status, routeName, routeDesc }) => {
  const data = {
    path: path,
    serviceId: serviceId,
    url: url,
    stripPrefix: stripPrefix,
    retryable: retryable,
    status: status,
    routeName: routeName,
    routeDesc: routeDesc
  }
  return request({
    url: 'base/gateway/route/add',
    data,
    method: 'post'
  })
}

/**
 * 更新接口
 * @param apiId
 * @param apiCode
 * @param apiName
 * @param apiCategory
 * @param serviceId
 * @param path
 * @param status
 * @param priority
 * @param apiDesc
 * @param isOpen
 * @param isAuth
 */
export const updateRoute = ({ routeId, path, serviceId, url, stripPrefix, retryable, status, routeName, routeDesc }) => {
  const data = {
    routeId: routeId,
    path: path,
    serviceId: serviceId,
    url: url,
    stripPrefix: stripPrefix,
    retryable: retryable,
    status: status,
    routeName: routeName,
    routeDesc: routeDesc
  }
  return request({
    url: 'base/gateway/route/update',
    data,
    method: 'post'
  })
}

/**
 * 删除接口
 * @param apiId
 */
export const removeRoute = (routeId) => {
  const data = {
    routeId: routeId
  }
  return request({
    url: 'base/gateway/route/remove',
    data,
    method: 'post'
  })
}
