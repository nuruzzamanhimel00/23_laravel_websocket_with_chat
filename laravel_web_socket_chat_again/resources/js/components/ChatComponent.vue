<template>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Chats</div>

                    <div class="card-body">
                        <div class="chat-box">
                             <ul style="height: 250px;overflow-y: scroll;" v-chat-scroll>
                                <li v-for="(value, key) in messages" :key="key" >
                                 <strong>{{value.user.name}}:</strong> {{ value.message }}
                                </li>
                            </ul>
                        </div>
                        <div class="chat-box-input">
                            <input
                             @keyup="onTypingEvent"
                            v-model="newMessage"
                            @keydown.enter="onKeyDownEnter()"
                            class="form-control" type="text">

                            <span class=" chat-typing"><i class="mt-2" v-if="activeUser">{{ activeUser.name }}  is typing....</i></span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        User Online
                    </div>
                    <div class="card-body">
                        <ol style="">
                                <li v-for="(value, key) in allUsers" :key="key" > {{value.name}}</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props:['user'],
        data(){
            return {
                messages:[],
                newMessage:'',
                allUsers:[],
                activeUser:false,
            }
        },
        mounted() {

            this.fetchAllMessage();

            Echo.join('chat')
              .here((users) => {
                    this.allUsers = users;
                    console.log(users);
                })
                .joining((user) => {
                    this.allUsers.push(user);
                    // console.log(user.name);
                })
                .leaving((user) => {
                   this.allUsers = this.allUsers.filter( usr => usr.id != user.id );
                    // console.log(user.name);
                })
            .listen('MessageSentEvent', (e) =>{
                this.messages.push(e.message)
                // console.log(e.message);
            } )
            .listenForWhisper('typing', (user) => {
                this.activeUser = user;
                // console.log("user",user);
                if(this.typeingTimer){

                    clearTimeout(this.typeingTimer);
                }
                this.typeingTimer = setTimeout(()=>{

                     this.activeUser =false;
                },2000);
                // console.log(this.typeingTimer);
            });
        },
        methods:{
            fetchAllMessage(){
                axios.get('/fetch-messages')
                .then( (response)=> {
                    // handle success
                    if(response.data.status == 'success'){
                        this.messages = response.data.data;
                    }
                    // console.log(response);
                })
                .catch(function (error) {
                    // handle error
                    console.log(error);
                })
                .finally(function () {
                    // always executed
                });
            },
            onKeyDownEnter(){
                axios.post('/send-messages', {
                    user_id: this.user.id,
                    message: this.newMessage
                })
                .then( (response) =>{
                    if(response.data.status == 'success'){
                        this.messages.push(response.data.data);
                        this.newMessage = "";
                    }
                    // console.log(response);
                })
                .catch(function (error) {
                    console.log(error);
                });
            },
             onTypingEvent(){
                console.log('dd', this.user);
                 Echo.join('chat')
                 .whisper('typing',this.user);
            }
        }
    }
</script>
