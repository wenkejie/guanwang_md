define(["datepicker"], function() {

/*
一、新签
新签就是第一次下单，所有的免费功能都是自住勾选，如果选择了帐号或功能，则对应的数量也必须填写。
二、新增
新增是用户的服务还在使用期，进入购买页后已使用的功能都要打上勾（预存款除外），并且不能被取消，用户只能勾选新的没有被购买的功能，或者对已有功能的数量或金额进行增加。
三、续费
续费是用户的服务还在使用期或已过期，进入购买页后所有已购买过的功能打勾（预存款除外），但用户可以取消付费功能。
*/

    function addYears(date, years) {
        var d = new Date(date.getTime());
        d.setFullYear(d.getFullYear() + years)
        return  d;
    }

    function createVM(model) {
        model.functionList = model.functionList || [];
        model.attributeList = model.attributeList || [];
        model.attributeList.map(function(attr){
               if(model.orderType ===1)  {
                   attr.isBuy = true;
                   attr.$canChange = true;
               } else if (model.orderType === 2) {
                    attr.$canChange = !attr.isBuy;
               } else if (model.orderType === 3) {
                    attr.$canChange = true;
               }
        })
        model.functionList.map(function(fun){
             if(model.orderType ===1)  {
                   fun.isBuy = (model.payType === 1)
                   fun.$canChange = true;
               } else if (model.orderType === 2) {
                    fun.$canChange = !fun.isBuy;
               } else if (model.orderType === 3) {
                    fun.$canChange = true;
               }
        })

        var vm = avalon.define({
            $id: "PurchaseCtrl",
            $skipArray: ["datepicker"],
            attributeList: model.attributeList,
            functionList: model.functionList,
            choose: function(el){
                el.isBuy = el.$canChange ? !el.isBuy : el.isBuy
            },
            datepicker: {
                minDate: new Date(),
                maxDate: addYears(new Date(), 10)
            }
        })
        return vm;
    }

    return {
        init: function(service) {
            //console.log(service)
            createVM(service);
        }
    }
})
