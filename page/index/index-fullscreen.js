
define (["fullPage"],function(){

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

        $userSwitch = $('ul.user-switch');
        $userSwitch.delegate('li','mouseenter',function(){
            $(this).siblings().removeClass('user-switch-items-active').end().addClass('user-switch-items-active');
            $('p.say-content').addClass('none').eq($(this).index()).removeClass('none')
        })

    })


    // 整屏滚动初始化
    var runPage;
    runPage = new FullPage({
        id: 'pageContain',
        slideTime: 800,
        effect: {
            transform: {
                translate: 'Y'
            },
            opacity: [0, 1]
        },
        mode: 'wheel, touch, nav:navBar',
        easing: 'ease'
    });

    // tab切换的js

    var $tabMenu = $('li.page-tab-menu-cell');
    var $tabCnt = $('div.page-tab-cnt');
    $('#pageContain').delegate('li.page-tab-menu-cell', 'click', function() {
        var index = $(this).index();
        var zps = $(this).parents('div.page-tab');

        // $tabMenu.removeClass("page-tab-menu-current");
        zps.find('li.page-tab-menu-cell').removeClass('page-tab-menu-current');
        $(this).addClass('page-tab-menu-current');
        zps.children('div.page-tab-cnt').hide().eq(index).show();
    });
    // $tabMenu.click(function() {
    //     var index = $(this).index();
    //     $tabMenu.removeClass("page-tab-menu-current");
    //     $(this).addClass('page-tab-menu-current');
    //     $tabCnt.hide().eq(index).show();
    // })
  
})