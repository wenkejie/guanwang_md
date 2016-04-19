define(["vercode", "validation"], function() {

    var vm , validationVM, _model ;
    _model = {username: "", mobile: "", email: "", findway: "", vercode:""};

    function createVM(message,vo) {
       var model = avalon.mix({}, _model, vo);
       model.findway = model.findway || "mobile";
       model.vercode = "";
        vm = avalon.define({
            $id: "PasswordForgetCtrl",
            message: message,
            account: model,
            error: avalon.mix({}, _model),
            $validation: {
                onInit: function(v) {
                    validationVM = v
                },
                deduplicateInValidateAll: true,
                onSuccess: function(arr, event) {
                    vm.error[this.name] = false;
                },
                onValidateAll: function(errors) {
                    vm.message = "";
                    if (errors.length === 0) {
                        submit()
                    } else {
                        checkError(errors)
                    }
                }
            }
        })
    }



    function checkError(errors) {
        errors.map(function(e) {
            vm.error[e.element.name] = true
        })
    }

    function submit() {
      	validationVM.widgetElement.submit();
    }

    return {
        init: function( message, vo) {
        	createVM(message, vo);
        }

    }

})
