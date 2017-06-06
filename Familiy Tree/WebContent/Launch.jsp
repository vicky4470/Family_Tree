<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="blended_layout.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/formview.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action='FamilytreeController' name="rootpgform">
		<div class="blended_grid">
			<div class="pageHeader"><%@include file="Header.html"%></div>
			<div class="pageLeftMenu"></div>
			<div class="pageContent">
				<div id="profileContent">
					<input class="imgpos" type="image" width="120" height="100"
						border="0" src="images/cross.png"
						onclick="submitform(this.id,this.form);" id="v0" name="rootimg">
					<div id="memInfo">Rev Jonathan Veeravalli</div>
				</div>
			</div>
			<div class="pageFooter"><%@include file="Footer.html"%></div>
		</div>
		<input type="hidden" name="fmemid" id="fmemid" value="test" /> <input
			type="hidden" name="action" id="action" value="getdetails" />
	</form>
</body>
</html>