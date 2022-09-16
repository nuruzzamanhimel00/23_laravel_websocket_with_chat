<template>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">Chats</div>

                    <div class="card-body">
                        <div class="chat-box">
                             <ul style="min-height: 100px;overflow-y: scroll;">
                                <li v-for="(value, key) in messages" :key="key" >
                                 <strong>{{value.user.name}}:</strong> {{ value.message }}
                                </li>
                            </ul>
                        </div>
                        <div class="chat-box-input">
                            <input
                            v-model="newMessage"
                            @keydown.enter="onKeyDownEnter()"
                            class="form-control" type="text">
                            <span class=" chat-typing"><i class="mt-2">Nuruzzaman Himel is typing....</i></span>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        User Online
                    </div>
                    <div class="card-body">
                        <ol style="">
                                <li> Himel</li>
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
            }
        },
        mounted() {
            console.log('Component mounted.')
            this.fetchAllMessage();
        },
        methods:{
            fetchAllMessage(){
                axios.get('/fetch-messages')
                .then( (response)=> {
                    // handle success
                    if(response.data.status == 'success'){
                        this.messages = response.data.data;
                    }
                    console.log(response);
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
            }
        }
    }
</script>
