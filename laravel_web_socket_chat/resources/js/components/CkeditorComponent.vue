<template>
    <div>
        <div class="card">
            <div class="card-header">
                <h1>Ck Editor</h1>
            </div>
            <div class="card-body">
                <ckeditor v-model="editorData" :config="editorConfig" @input="onEditorInput">></ckeditor>
            </div>
        </div>
    </div>
</template>
<script>
    import CKEditor from 'ckeditor4-vue';
    export default {
        name: 'app',
        components: {
            // Use the <ckeditor> component in this view.
            ckeditor: CKEditor.component
        },
        data() {
            return {
                editorData: '<p>Content of the editor.</p>',
                editorConfig: {
                    // The configuration of the editor.
                }
            };
        },
        methods: {
            onEditorInput(){
                // console.log(this.editorData);
            }
        },
        watch:{
            editorData(){
                console.log(this.editorData);
            }

        }
    }
</script>
