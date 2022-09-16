<template>
    <div class="container">
        <div class="row justify-content-center">
        <div class="col-md-8">
           <div class="card">
                <div class="card-header">
                    <h3>
                        Messages
                    </h3>
                </div>
                <div class="card-body">
                   <ul class="list-styled" style="height: 300px;overflow-y: scroll;" v-chat-scroll="{always: false, smooth: true}">
                        <li class="p-2" v-for="(msg, index) in messages" :key="index">
                            <strong>{{msg.user.name}}</strong>
                            {{ msg.message }}
                        </li>
                   </ul>
                </div>
                <input
                @keydown="onTypingEvent"
                @keyup.enter="onSendMessage()"
                v-model="newMessage"
                type="text"
                name="message"
                placeholder="enter your message"
                class="form-control"
                >
                <span class="text-muted p-2" v-if="activeUser"><i>{{ activeUser.name }} is typing....</i></span>
           </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="card card-default">
                        <div class="card-header">
                            <b>USER ONLINE</b>
                        </div>
                        <div class="card-bod">
                            <ul class="left-ul">
                                <li v-for="(value, key) in users" :key="key" >
                                    {{ value.name }}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</template>

<script>

    export default {
        name:'CatsComponent',
        props:['user'],
        data(){
           return {
             messages: [],
             newMessage:'',
             users:[],
             activeUser:false,
             typeingTimer:false,
           }
        },
        mounted(){
            this.fetchMessages();

            Echo.join('chat')
            .here((users) => {
                this.users = users;
                console.log("hre:",users);
            })
            .joining((user) => {
                this.users.push(user);
                console.log(user ,'joined');
            })
            .leaving((user) => {
               this.users = this.users.filter( (urs) => urs.id != user.id  );
                console.log(`${user.name} leaved`);
            })
            .listen('MessageSent', (event) =>{
                 this.messages.push(event.message);
                console.log("other=",event);
            } )
            .listenForWhisper('typing', (user) => {
                this.activeUser = user;
                // console.log("user",user);
                if(this.typeingTimer){
                    console.log("clearTimeout hit");
                    clearTimeout(this.typeingTimer);
                }
                this.typeingTimer = setTimeout(()=>{
                    console.log("typeingTimer set");
                     this.activeUser =false;
                },2000);
                // console.log(this.typeingTimer);
            });;


        },
        created(){

        },
        methods:{
            fetchMessages(){
                axios.get('/messages')
                .then((res)=>{
                    // console.log(res.data.data.length);
                    if(res.data.status == 'success' && res.data.data.length > 0){
                        this.messages = res.data.data;
                    }
                    // console.log(res.data);
                });
            },
            onSendMessage(){
                if(this.newMessage == ""){
                    return false;
                }
                axios.post('/messages',{
                    'user_id' : this.user.id,
                    'message' : this.newMessage
                }).then((res)=>{
                    if(res.data.status == "success"){
                        this.messages.push(res.data.data);
                        this.newMessage = "";
                    }
                    // console.log(res);
                });
            },
            onTypingEvent(){
                // console.log('dd');
                 Echo.join('chat')
                 .whisper('typing',this.user);
            }
        }
    }
</script>
<style scoped>

</style>
