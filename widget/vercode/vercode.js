

define([], function(){

	var vm = avalon.define({
		$id: "VercodeCtrl",
		_time: getTime(),
		changeVerCode: function(){
	               	vm._time = getTime();
	               }
	})

	 function getTime() {
 	       return new Date().getTime();
 	}

})