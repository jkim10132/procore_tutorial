import Vue from 'vue/dist/vue.esm'
import Table from '../Table.vue'

Vue.config.productionTip = false

import VueMaterial from 'vue-material'
import 'vue-material/dist/vue-material.min.css'
import 'vue-material/dist/theme/default.css'

Vue.use(VueMaterial)
Vue.component("table", Table)

document.addEventListener('DOMContentLoaded', () => {
	const table =new Vue({
	  el: '[data-behavior="vue"]'
	});
})


