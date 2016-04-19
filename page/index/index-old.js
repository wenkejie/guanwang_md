

define (["config","carousel"], function(config){

avalon.define("IndexCtrl", function(vm) {
    vm.purchase = function(){
            location.href= config.ctx + "/purchase/buy?id=1"
    }
    vm.$opt = {
        pictures: [{
            src:  __uri("static/img/banner1.png"),
            href: "/shopkeeper-gw-rest/purchase/buy?id=1",
            title: "图片1"
        }, {
            src: __uri("static/img/banner1.png"),
            href: "/shopkeeper-gw-rest/purchase/buy?id=1",
            title: "图片2"
        }, {
            src: __uri("static/img/banner1.png"),
            href: "/shopkeeper-gw-rest/purchase/buy?id=1",
            title: "图片3"
        }, {
            src: "http://7xkm02.com1.z0.glb.clouddn.com/4.jpeg",
            href: "/shopkeeper-gw-rest/purchase/buy?id=1",
            title: "图片4"
        }, {
            src: "http://7xkm02.com1.z0.glb.clouddn.com/5.jpeg",
            href: "/shopkeeper-gw-rest/purchase/buy?id=1",
            title: "图片5"
        }],
        timeout: 4000,
        duration: 800,
        pictureWidth : 1400,
        pictureHeight: 500
    }
    vm.$skipArray = ["carousel"]
})
avalon.scan()
})