function submitform(id, form) {

	alert("hi");
	alert(id);

	var formName = form.name;
	// alert(formName);

	var memid = $("#fmemid").val(id);
	var hdid = $("#fmemid").val();
	// alert(hdid);
	$(formName).submit;
	// document.forms['rootpgform'].submit();
}

function editdiv(id) {

	alert(id);
	$("#editprofile").show();
	$("#edit").show();
	$.ajax({
		type : "POST",

		url : "/FamilytreeController.do",

		data : {
			fmemid : id
		},

		success : function(response) {

			alert(response);
		},

	});

	// alert("show div");
	return false;

}
function addchildren() {
	alert("hi");
}
function hidediv() {
	$("#editprofile").hide();
	$("#edit").hide();
	// alert("show div");
	return false;

}