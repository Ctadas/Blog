KindEditor.ready(function(K) {
    window.editor = K.create('textarea[name="context"]',{

    	uploadJson: '/index/uploadImg/',
        // 指定大小
        width:'800px',
        height:'200px',

    });
});