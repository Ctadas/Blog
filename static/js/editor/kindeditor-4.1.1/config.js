KindEditor.ready(function(K) {
    window.editor = K.create('textarea[name="context"]',{

    	uploadJson: '/index/uploadImg/',
        // 指定大小
        width:'600px',
        height:'600px',

    });
});
