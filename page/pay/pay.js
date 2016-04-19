

define ( function(){

    

    $("#jOpenWin").click(function() {

        // var top = 250;
        // var $bh = $(document).height();
        // var scrollTop = $(document).scrollTop();


        // if (/MSIE 6./i.test(navigator.userAgent)) {
        //     $('div.open-win').css({
        //         'top': top + scrollTop

        //     });
        //     $("div.open-shadow").height($bh);
        // } else {
        //     $('div.open-win').css({
        //         'top': top

        //     });
        // };

        $("div.protocol-openw").removeClass('none');


    });

    $("a.open-win-btn").click(function() {
        $("div.protocol-openw").addClass('none');
    });

    $("#jCloseWin").click(function() {
        $("div.protocol-openw").addClass('none');
    });

})
