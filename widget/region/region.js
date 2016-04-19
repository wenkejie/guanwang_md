define(["./data", "mmPromise"], function(data) {

    var provinces = data.provinces;
    var items = data.items;

    var widget = avalon.ui.region = function(element, data, vmodels) {
        var options = data.regionOptions

        function resetCurRegion(obj) {
            avalon.mix(vmodel.curRegion, obj);
        }

        var vmodel = avalon.define(data.regionId, function(vm) {

            vm.$skipArray = ["widgetElement"]

            avalon.mix(vm, options)

            vm.widgetElement = element

            // 全国省份
            vm.provinces = [].concat(provinces);
            // 城市
            vm.cities = [];
            // 县区
            vm.districts = [];

            vm.curRegion = {
                province: "",
                provinceName: "",
                city: "",
                cityName: "",
                district: "",
                districtName: ""
            };

            vm._toggle = {
                "p": 0,
                "c": 0,
                "d": 0
            };

            vm.toggle = function(flag) {
                vmodel._toggle[flag] = !vmodel._toggle[flag];
            }

            vm.chooseProv = function(el) {
                vmodel.toggle("p");
                vmodel.cities = [].concat(items[el.id] || []);
                resetCurRegion({
                    provinceName: el.name,
                    province: el.id,
                    city: '',
                    cityName: '',
                    district: '',
                    districtName: ''
                })
                vmodel.districts = [];
            }

            vm.chooseCity = function(el) {
                vmodel.toggle("c");
                vmodel.districts = [].concat(items[el.id] || []);
                resetCurRegion({
                    cityName: el.name,
                    city: el.id,
                    district: '',
                    districtName: ''
                })
            }

            vm.chooseDistrict = function(el) {
                resetCurRegion({
                    districtName: el.name,
                    district: el.id
                })
                vmodel.toggle("d");
            }

            vm.setCurRegion = function(obj) {
                resetCurRegion(obj)
                vmodel.cities = [].concat(items[obj.province] || []);
                vmodel.districts = [].concat(items[obj.city] || []);
            }

            vm.$init = function() {
                element.innerHTML = __inline("./region.html");
                avalon.scan(element, [vmodel].concat(data.vmodels))
                if (typeof options.onInit === "function") {
                    options.onInit.call(element, vmodel, options, vmodels)
                }
            }
        })

        vmodel.curRegion.$watch("province",function( ){
            var el = (this.$events["province"][1].element)
            vmodel.onChange.call(el, vmodel.curRegion.$model,vmodel);
        })

        vmodel.curRegion.$watch("city",function(){
            var el = (this.$events["city"][1].element)
            vmodel.onChange.call(el, vmodel.curRegion.$model,vmodel);
        })

        vmodel.curRegion.$watch("district",function(){
            var el = (this.$events["district"][1].element)
            vmodel.onChange.call(el, vmodel.curRegion.$model,vmodel);
        })

        return vmodel
    }
    widget.defaults = {
        onChange: avalon.noop,
        inputNames: {
            "province": "province",
            "provinceName": "provinceName",
            "city": "city",
            "cityName": "cityName",
            "district": "district",
            "districtName": "districtName"
        }
            
    }

})
