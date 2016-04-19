// @require static/lib/webuploader/webuploader.css
define(["rsa", "webuploader", "region", "infosource", "vercode", "validation"], function(RSAUtil, WebUploader) {

    var _modulus, _publicExponent, _step, validationVM, regionVM, infosourceVM;
    // 登陆信息
    var _registry = {
        username: "",
        passwd: "",
        repeatPasswd: "",
        password: "",
        verCode: "",
        // 补充信息
        companyName: "",
        contact: "",
        mobile: "",
        telephone: "",
        email: "",
        address: "",
        businessType: [],
        scale: "",
        website: "",
        source: "",
        businessLicense: "",
        province: "",
        provinceName: "",
        city: "",
        cityName: "",
        district: "",
        districtName: ""
    };

    var vm = avalon.define({
        $id: "RegisterFormCtrl",
        $skipArray: ["validation", "region"],
        registry: avalon.mix({}, _registry),
        error: avalon.mix({}, _registry,{businessType: ""}),
        fileName: "",
        fileUrl: "",
        deleteFile: function() {
            vm.fileName = "";
            vm.fileUrl = "";
        },
        validation: {
            onInit: function(v) {
                validationVM = v
            },
            deduplicateInValidateAll: true,
            onSuccess: function(arr, event) {
                vm.error[this.name] = false;
            },
            onValidateAll: function(errors) {
                if (errors.length === 0) {
                    submit()
                } else {
                    checkError(errors)
                }
            }
        },
        region: {
            onInit: function(v) {
                regionVM = v;
            },
            onChange: function(r,v) {
                vm.registry.province = r.province
                vm.registry.provinceName = r.provinceName
                vm.registry.city = r.city
                vm.registry.cityName = r.cityName
                vm.registry.district = r.district
                vm.registry.districtName = r.districtName

                validateWidgetInput(this);
            }
        },
        infosource: {
            onInit: function(v) {
                infosourceVM = v;
            },
            onChange: function(s, v){
                vm.registry.source = s.id
                validateWidgetInput(this);
            }
        }

    })

    vm.registry.$watch("businessLicense", function(){
       var el = this.$events["businessLicense"][1].element
       validateWidgetInput(el);
    })

    function checkError(errors) {
        errors.map(function(e) {
            vm.error[avalon(e.element).attr("name")] = true
        })
    }

    function validateWidgetInput(el){
        validationVM.data.forEach(function(data) {
                if (data.element === el) {
                    validationVM.validate(data, 0, {})
                }
         })
    }

    function submit() {
        if (_step === 1) {
            vm.registry.password = getRsaPassword(_modulus, _publicExponent);
        } 
        validationVM.widgetElement.submit();
    }

    function getRsaPassword(modulus, publicExponent) {
        return RSAUtil.encrypt(_modulus, _publicExponent, vm.registry.passwd);
    }

    function initWebuploader() {
        var uploader = WebUploader.create({
            // 选完文件后，是否自动上传。
            auto: true,
            // 不压缩image
            resize: false,
            // swf文件路径
            swf: './Uploader.swf',
            // 文件接收服务端。
            server: '/shopkeeper-gw-rest/comm/upload/image',
            // 选择文件的按钮。可选。
            // 内部根据当前运行是创建，可能是input元素，也可能是flash.
            pick: '#filePicker',
            // 设置文件上传域的name
            fileVal: "fileupload",
            // 验证文件总数量, 超出则不允许加入队列
            fileNumLimit: 1,
            // 验证文件总大小是否超出限制, 超出则不允许加入队列。
            fileSizeLimit: 5242880,
            // 验证单个文件大小是否超出限制, 超出则不允许加入队列
            fileSingleSizeLimit: 5242880,
            // 只允许选择图片文件。
            accept: {
                title: 'Images',
                extensions: 'gif,jpg,jpeg,bmp,png',
                mimeTypes: 'image/*'
            }
        });
        // 文件上传成功，给item添加成功class, 用样式标记上传成功。
        uploader.on('uploadSuccess', function(file, response) {
            vm.fileName = file.name;
            vm.fileUrl = response.object.fullPath;
            vm.registry.businessLicense = response.object.path;
        });
        // 文件上传失败，显示上传出错。
        uploader.on('uploadError', function(file) {
            alert('上传失败');
        });
        // 完成后，最终情况队列，便于重新选择
        uploader.on('uploadComplete', function(file) {
            uploader.reset();
        });

    }

    return {
       init: function(obj) {
           _modulus = obj.modulus
           _publicExponent = obj.exponent
           _step = obj.step;
           var r = obj.registry ? avalon.parseJSON(obj.registry) : {}
           if (_step == 1) {
               avalon.mix(vm.registry, {
                    username: r.username,
                    password: "",
                    vercode: ""
               });
           } else if (_step == 2) {
               initWebuploader();
               r.businessType = r.businessType ? r.businessType.split(",") : [];
               r.businessLicense = "";
               avalon.mix(vm.registry, r);
               setTimeout(function() {
                   regionVM.setCurRegion({
                       province: vm.registry.province,
                       provinceName: vm.registry.provinceName,
                       city: vm.registry.city,
                       cityName: vm.registry.cityName,
                       district: vm.registry.district,
                       districtName: vm.registry.districtName
                   })
                   infosourceVM.setSourceById(vm.registry.source);
               }, 200)
           }
       }
    }

})
