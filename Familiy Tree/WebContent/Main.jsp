<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="blended_layout.css">
<title>Page Title</title>
<meta name="description"
	content="Write some words to describe your html page">
</head>
<body>
<form method="POST" action='FamilytreeController' name="rootpgform">
	<div class="blended_grid">
		<div class="pageHeader"><%@include file="Header.html"%></div>
		<div class="pageLeftMenu"></div>
		<div class="pageContent"></div>
		<div class="pageFooter"></div>
	</div>
</body>
</html>