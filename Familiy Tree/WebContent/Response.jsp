<%@page import="java.util.ArrayList"%>
<%@page import="com.veeravalli.family.model.FamilyMemberData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.1.js"></script>
<script type="text/javascript" src="js/formview.js"></script>
<link rel="stylesheet" type="text/css" href="blended_layout.css">

<title>Insert title here</title>
</head>
<body>
	<form method="POST" action='FamilytreeController' name="resultpgform">
		<%
			FamilyMemberData fmldata = new FamilyMemberData();
			FamilyMemberData childInfo = new FamilyMemberData();
			String spouse = "";
			int memslstize = 0;
		%>
		<div class="blended_grid">
			<div class="pageHeader"><%@include file="Header.html"%></div>
			<div class="pageLeftMenu">
				<%@include file="SideMenu.jsp"%></div>
			<div class="pageContent">
				<%
					fmldata = (FamilyMemberData) request.getAttribute("familydata");
					ArrayList<FamilyMemberData> childrendata = new ArrayList<FamilyMemberData>();
					spouse = fmldata.getSpouseName();
					childrendata = fmldata.getFmlydata();
					memslstize = childrendata.size();
					//System.out.println(memslstize);
				%>
				<div id="headProfileContent">

					<div id="subdiv">
						<div id="imgpos">
							<input class="imgshape" type="image" width="72" height="46"
								title="Click to View Profile" id="<%=fmldata.getfMemId()%>"
								src="<%=fmldata.getImgpath()%>"
								onclick="submitform(this.id,this.form)" />
						</div>
						<div id="infodetails"><%=fmldata.getName().toString()%></div>
					</div>

					<div id="subdiv">
						<div id="imgpos">
							<input class="imgshape" title="Click to View Profile"
								type="image" width="75" height="45"
								id="<%=fmldata.getfMemId()%>"
								src="<%=fmldata.getSpouseImgPath()%>"
								onclick="submitform(this.id,this.form)" />
						</div>
						<div id="infodetails">

							<%=fmldata.getSpouseName().toString()%></div>
					</div>



				</div>
				<div id="profiles">
					<%
						if (memslstize != 0) {
							for (int i = 0; i < memslstize; i++) {

								childInfo = (FamilyMemberData) childrendata.get(i);
					%>

					<div id="subdiv2">
						<div id="imgpos">
							<input class="imgshape" title="Click to View Profile"
								type="image" width="75" height="45"
								id="<%=childInfo.getfMemId()%>"
								src="<%=childInfo.getImgpath()%>"
								onclick="submitform(this.id,this.form)" />
						</div>
						<div id="infodetails">

							<%=childInfo.getName()%></div>
						<div><input type="image" src="images/button.png"></div>
					</div>
					<%
						}
						}
					%>
				</div>
			</div>
			<div id="editprofile">
				<div>
					<table id="editable">
						<tr>
							<td>First Name :</td>


							<td><input type="text" name="fname"></td>
						</tr>
						<tr>
							<td>Middle Name :</td>


							<td><input type="text" name="mname"></td>
						</tr>
						<tr>
							<td>Last Name :</td>


							<td><input type="text" name="lname"></td>
						</tr>
						<tr>
							<td>Nick Name :</td>


							<td><input type="text" name="nkname"></td>
						</tr>
						<tr>
							<td>Address Line 1 :</td>


							<td><input type="text" name="adline1"></td>
						</tr>
						<tr>
							<td>Address Line 2 :</td>


							<td><input type="text" name="adline2"></td>
						</tr>

					</table>
				</div>
			</div>
			<div class="pageFooter"><%@include file="Footer.html"%></div>
		</div>
		<input type="hidden" name="fmemid" id="fmemid" value="test" /> <input
			type="hidden" name="action" id="action" value="getdetails2" />




	</form>




</body>
</html>