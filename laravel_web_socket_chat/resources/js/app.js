/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

import VueChatScroll from 'vue-chat-scroll'
Vue.use(VueChatScroll)

import CKEditor from 'ckeditor4-vue';
Vue.use( CKEditor );


Vue.component('chats-component', require('./components/ChatsComponent.vue').default);
Vue.component('ckeditor-component', require('./components/CkeditorComponent.vue').default);


const app = new Vue({
    el: '#app',
});
