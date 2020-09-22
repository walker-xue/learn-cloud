// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import store from './store'
import iView from 'iview'
import i18n from '@/locale'
import config from '@/config'
import importDirective from '@/directive'
import installPlugin from '@/plugin'
import 'iview/dist/styles/iview.css'
import './index.less'
import '@/assets/icons/iconfont.css'
import '@riophae/vue-treeselect/dist/vue-treeselect.css'
import TreeTable from 'tree-table-vue'
import Treeselect from '@riophae/vue-treeselect'
import 'highlight.js/styles/googlecode.css' //样式文件

Vue.use(iView, {
  i18n: (key, value) => i18n.t(key, value)
})

Vue.component(TreeTable.name, TreeTable)
// 注册组件
Vue.component('treeselect', Treeselect)

/**
 * @description 注册admin内置插件
 */
installPlugin(Vue)
/**
 * @description 生产环境关掉提示
 */
Vue.config.productionTip = false
/**
 * @description 全局注册应用配置
 */
Vue.prototype.$config = config
/**
 * 注册指令
 */
importDirective(Vue)

/**
 * 按钮全新控制
 *authorities 多个用,号隔开
 * v-show="hasAuthority('systemUserCreate')"
 * v-show="hasAuthority('systemUserCreate,systemUserUpdate,')"
 * @param authorities
 * @returns {boolean}
 */
Vue.prototype.hasAuthority = function (authorities) {
  if (!authorities) {
    return false
  }
  return authorities.split(',').some(item => {
    return store.state.user.access.includes("ACTION_"+item)
  })
}


/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  i18n,
  store,
  render: h => h(App)
})
