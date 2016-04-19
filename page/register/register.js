
define ([],function(){

    var $tabMenu = $('li.tab-menu-cell');
    var $tabCnt = $('div.rg-tab-cnt');
    $tabMenu.click(function() {
        var index = $(this).index();
        $tabMenu.removeClass("tab-menu-cell-current");
        $(this).addClass('tab-menu-cell-current');
        $tabCnt.hide().eq(index).show();
    });
    
})