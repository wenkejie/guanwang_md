
define([], function() {

    var sourceOptions =  [
            {id: 1, name: "同行"},
            {id: 2, name: "销售"},
            {id: 3, name: "电梯广告"},
            {id: 4, name: "微信微博"},
            {id: 5, name: "老客户"},
            {id: 6, name: "网站"},
    ] ;

    var widget = avalon.ui.infosource = function(element, data, vmodels) {
        var options = data.infosourceOptions;

        var vmodel = avalon.define(data.infosourceId, function(vm) {

            vm.$skipArray=["widgetElement"]

            avalon.mix(vm, options)

            vm.widgetElement = element

            vm.curSource = {
            	    id: "",
            	    name: ""
            };

            vm.sourceOptions = [].concat(sourceOptions);

            vm._toggle = false;

            vm.toggle = function(){
                vmodel._toggle = !vmodel._toggle;
            }

            vm.choose = function(el){
                   vmodel.toggle();
                   vmodel.curSource = {
                   	id: el.id,
            	    	name: el.name
                   }
            }

            vm.setSourceById = function(id){
            		var r = sourceOptions.filter(function(el){
            			return el.id == id;
            		})
            		if(r.length > 0){
            			vmodel.curSource = r[0]
            		}
            }

            vm.$init = function() {
                element.innerHTML = __inline("./infosource.html");
                avalon.scan(element, [vmodel].concat(data.vmodels))
                if (typeof options.onInit === "function") {
                    options.onInit.call(element, vmodel, options, vmodels)
                }
            }
        })

        vmodel.$watch("curSource", function(){
            var el = (this.$events["inputName"][0].element)
            vmodel.onChange.call(el, vmodel.curSource.$model, vmodel);
        })
        
        return vmodel
    }
    widget.defaults = {
        onChange: avalon.noop,
        inputName: "source"
    }

})
