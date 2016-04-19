define (["ckplayer"],function(){

    $('#jump-btn').click(function(){//返回顶部
        $('html,body').animate({scrollTop:0},150);
    })


    $('body').on('click', '.j-player', function() {
    	var _h = $(window).height();//窗口高度
        var _w = $(window).width(); //窗口宽度
        $('div.player-area').removeClass('none');
        $('body').css('overflow', 'hidden');
        // $('div.player-shadow').css({
        // 	width: _w,
        // 	height: _h
        // });
        return false;
    }).click(function() {
       $('div.player-area').addClass('none');
       $('body').css('overflow', 'inherit');
    });

    var flashvars={
        f:'http://movie.ks.js.cn/flv/other/1_0.flv',
        c:0,
        p:1,
        logo:'null'
    };
    var params={bgcolor:'#FFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
    CKobject.embedSWF('/widget/ckplayer/ckplayer.swf','video1','ckplayer_a1','1000','560',flashvars,params);
    // CKobject.embedSWF('/widget/ckplayer/ckplayer.swf','video2','ckplayer_a1','324','180',flashvars,params);
    // CKobject.embedSWF('/widget/ckplayer/ckplayer.swf','video3','ckplayer_a1','324','180',flashvars,params);
})