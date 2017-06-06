<%@page import="java.util.ArrayList"%>
<%@page import="com.veeravalli.family.model.FamilyMemberData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="sample.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/formview.js"></script>
<title>Veeravalli's</title>
</head>
<body>
	<form method="POST" action='FamilytreeController' name="resultpgform">
		<%
			FamilyMemberData fmldata = new FamilyMemberData();
			FamilyMemberData childInfo = new FamilyMemberData();
			int memslstize = 0;
		%>
		<div id="container">


			<div id="header">
				<%@include file="Header.html"%></div>

			<div id="sidebar">sidebar content here</div>
			<div id="content">

				<%
					fmldata = (FamilyMemberData) request.getAttribute("familydata");
					ArrayList<FamilyMemberData> childrendata = new ArrayList<FamilyMemberData>();

					childrendata = fmldata.getFmlydata();
					memslstize = childrendata.size();
					//System.out.println(memslstize);
				%>
				<div id="headprofile"">
					<div id="imageloc">
						<input width="72" height="46" border="0" type="image" id="<%=fmldata.getfMemId() %>"
							src="images/cross.png" />
						<div id="infodetails">
							
							<%=fmldata.getName().toString()%></div>
					</div>
				</div>
				<div id="profiles">
					<%
						if (memslstize != 0) {
							for (int i = 0; i < memslstize; i++) {

								childInfo = (FamilyMemberData) childrendata.get(i);
					%>

					<div id="imagelocdiv">
						<input type="image" width="72" height="46"
							id="<%=childInfo.getfMemId()%>" border="0" src="images/cross.png" onclick="submitform(this.id,this.form)"/>
						<div id="infodetails">
							
							<%=childInfo.getName()%></div>
					</div>
					<%
						}
						}
					%>
				</div>
			</div>
<input type="hidden" name="fmemid" id="fmemid" value="test" />
		<input type="hidden" name="action" id="action" value="getdetails" />


			<div id="footer">footer content here</div>



		</div>
	</form>
</body>
</html>