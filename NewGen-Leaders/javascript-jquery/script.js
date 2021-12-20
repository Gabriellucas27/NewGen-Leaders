$(document).ready(function(){
	$('.modal').modal();
});

function toggleModal(){
	var instance = M.Modal.getInstance($('#modal3'));
	instance.open();
}