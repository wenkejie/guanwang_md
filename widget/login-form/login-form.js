define(["rsa", "vercode","validation"], function(RSAUtil) {

    var _modulus, _publicExponent, validationVM;

    var vm = avalon.define({
        $id: "LoginCtrl",
        $skipArray: ["validation"],
        user: {
            userName: "",
            password: "",
            passwd: "",
            verCode: ""
        },
        validation: {
            onInit: function(v) {
                validationVM = v
            },
            deduplicateInValidateAll: true,
            onSuccess: function(arr,event) {
                 vm.error[event.target.name] = false;
            },
            onValidateAll: function(errors) {
                if (errors.length === 0) {
                    submit()
                } else {
                    checkError(errors)
                }
            }
        },
        error: {
            userName: "",
            passwd: "",
            verCode: ""
        }
    })

    function getRsaPassword(modulus, publicExponent) {
        return RSAUtil.encrypt(_modulus, _publicExponent, vm.user.passwd);
    }

    function checkError(errors) {
        errors.map(function(e) {
            vm.error[avalon(e.element).attr("name")] = true
        })
    }

    function submit() {
        vm.user.password = getRsaPassword(modulus, publicExponent);
        validationVM.widgetElement.submit();
    }

    return {
        init: function(modulus, publicExponent) {
            _modulus = modulus
            _publicExponent = publicExponent
        }
    }


})
