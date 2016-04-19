define(["config","pager", "mmPromise"], function(config) {
    var ctx, pagerVM, p, rs, rj;

    p = new Promise(function(resolve, reject) {
        rs = resolve;
        rj = reject;
    })

    function getArticleList(pageNum) {
        pageNum = pageNum || 1
        avalon.getJSON(config.ctx + "/story/list", {
            pageNum: pageNum
        }, function(articles) {
            vm.list = articles.list;
            p.then(function(v) {
                v.currentPage = articles.pageNum;
                v.totalItems = articles.total;
                v.perPages = articles.pageSize;
            })
        })
    }

    var vm = avalon.define({
        $id: "StoryListCtrl",
        $skipArray: ["pager"],
        list: [],
        pager: {
            onInit: function(v) {
                pagerVM = v;
                rs(v);
            },
            alwaysShowNext: true,
            alwaysShowPrev: true,
            currentPage: 1,
            totalItems: 10,
            onJump: function(e, page) {
                getArticleList(pagerVM.currentPage)
            }
        }
    })

    avalon.scan();
    return {
        init: function() {
            getArticleList();
        }
    }

})
