<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="sample.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/formview.js"></script>
<title>Veeravalli's</title>
</head>
<body>
	<form method="POST" action='FamilytreeController' name="rootpgform">

		<div id="container">


			<div id="header">
				<%@include file="Header.html"%></div>

			<div id="sidebar">sidebar content here</div>
			<div id="content">
				<input type="image" width="72" height="46" border="0"
					src="images/cross.png" onclick="submitform(this.id,this.form);"
					id="v0" name="rootimg">
				<!-- <img src="images/cross.png" alt="click to view family" width="72"
					height="46" border="0" id="rootimgclk" name="rootimg" /> -->
				Name : Jonathan Veeravalli
			</div>



			<div id="footer"><%@include file="Footer.html"%></div>



		</div>
		<input type="hidden" name="fmemid" id="fmemid" value="test" /> <input
			type="hidden" name="action" id="action" value="getdetails" />

	</form>
</body>
</html>