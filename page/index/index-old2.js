
define (["ckplayer"],function(){

    // $('div.bg-img-wrap').css('left', 'value');

    $('#jump-btn').click(function(){//返回顶部
        $('html,body').animate({scrollTop:0},150);
    })

    $(function(){
        // var _h = $(window).height();//窗口高度
        // $('.bg-cnt').height(_h);
        // cover(); 

        $('.gui-jump').fadeIn();
        $('.bg-img').fadeIn();
        $('.bg-text').fadeIn();
        // $('.bg-video-wrap').fadeIn();
        // $('.bg-img-wrap').css('z-index','0');
        $(window).resize(function(){ //浏览器窗口变化 
            // cover(); 
        });
        $(window).ready(function(){ //浏览器窗口变化 
            // cover(); 
        });  
        function cover(){
            var bgim = $('img.bg-img');
            var bgim_w = $('img.bg-img').width();   
            var _h = $(window).height();//窗口高度
            var _w = $(window).width(); //窗口宽度
            var imgW= 1400;
            var imgH= 600;

            var imgWH = imgW / imgH, cntWh = _w / _h;

            // bgim.css('margin-left', -(bgim_w / 2));
            // console.log(bgim_w);
            if(imgWH <= cntWh){
                $('.bg-img').css({width:'100%',height:'auto'});
                bgim.css('margin-left', -(imgW / 2));
            }else{
                $('.bg-img').css({height:'100%',width:'auto'});
                bgim.css('margin-left', -(bgim_w / 2));
            }
        }
    })

    $('body').on('mouseenter', 'div.video-cell', function() {
        $(this).addClass('video-cell-active').siblings().removeClass('video-cell-active');
    }).on('click', '.j-player', function() {
        $('div.player-area').removeClass('none');
        $('body').css('overflow', 'hidden');
        return false;
    });
    $('body').click(function() {
       $('div.player-area').addClass('none');
       $('body').css('overflow', 'inherit');
    });

    var flashvars={
        f:'http://movie.ks.js.cn/flv/other/1_0.flv',
        c:0,
        p:1
    };
    var params={bgcolor:'#FFF',allowFullScreen:true,allowScriptAccess:'always',wmode:'transparent'};
    CKobject.embedSWF('/widget/ckplayer/ckplayer.swf','video1','ckplayer_a1','1000','560',flashvars,params);
    // CKobject.embedSWF('/widget/ckplayer/ckplayer.swf','video2','ckplayer_a1','324','180',flashvars,params);
    // CKobject.embedSWF('/widget/ckplayer/ckplayer.swf','video3','ckplayer_a1','324','180',flashvars,params);
})