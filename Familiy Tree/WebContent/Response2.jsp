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
<link rel="stylesheet" type="text/css" href="blended_layout2.css">

<title>Insert title here</title>
</head>
<body>
	<form method="POST" action='FamilytreeController' name="resultpgform">
		<%
			FamilyMemberData fmldata = new FamilyMemberData();
			FamilyMemberData childInfo = new FamilyMemberData();
			String spouse = "";
			String fmemcode="";
			int fmemcodesize=0;
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
					fmemcode=fmldata.getfMemId();
					fmemcodesize=fmldata.getfMemId().length();
					//System.out.println(memslstize);
				%>
				<div id="headProfileContent">

					<div id="subdiv">
						<div id="imgpos">
							<input title="Click to View Profile" class="imgshape"
								type="image" width="150" height="110"
								id="<%=fmldata.getfMemId()%>" src="<%=fmldata.getImgpath()%>"
								onclick="submitform(this.id,this.form)" />
						</div>
						<div id="infodetails"><%=fmldata.getName().toString()%></div>
						<div>
							<a href="#" class="myButton" onclick="editdiv(); return false;">Edit</a>
						</div>
					</div>

					<div id="subdiv">
						<div id="imgpos">
							<input title="Click to View Profile" class="imgshape"
								type="image" width="150" height="110"
								id="<%=fmldata.getfMemId()%>"
								src="<%=fmldata.getSpouseImgPath()%>"
								onclick="submitform(this.id,this.form)" />
						</div>
						<div id="infodetails">

							<%=fmldata.getSpouseName().toString()%></div>
						<div>
							<a href="#" id="<%=fmldata.getfMemId() %>" class="myButton" onclick="editdiv(this.id); return false;">Edit</a>
						</div>
					</div>



				</div>
				<%if(fmemcodesize>5){ %>
				<div id="addchld">
					<a href="#" class="myButton" onclick="addchildren(); return false;">Add Children</a>
				</div>
				<%} %>
				<div id="profiles">
					<%
						if (memslstize != 0) {
							for (int i = 0; i < memslstize; i++) {

								childInfo = (FamilyMemberData) childrendata.get(i);
					%>

					<div id="subdiv2">
						<div id="imgpos">
							<input title="Click to View Profile" class="imgshape"
								type="image" width="120" height="90"
								id="<%=childInfo.getfMemId()%>"
								src="<%=childInfo.getImgpath()%>"
								onclick="submitform(this.id,this.form)" />
						</div>
						<div id="infodetails">

							<%=childInfo.getName()%></div>
						<div>
							<a href="#" id="<%=childInfo.getfMemId() %>" class="myButton" onclick="editdiv(this.id); return false;">Edit</a>
						</div>
					</div>
					<%
						}
						}
					%>
				</div>
			</div>
			<div id="edit">
				<div id="closebtn">
					<input type="image" src="images/Close.png"
						onclick="hidediv(); return false;">
				</div>
				<div id="editprofile">

					<div>
						<table id="editable">
							<tr>
								<td>First Name</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="fname"></td>
							</tr>
							<tr>
								<td>Middle Name</td>

								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="mname"></td>
							</tr>
							<tr>
								<td>Last Name</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="lname"></td>
							</tr>
							<tr>
								<td>Nick Name</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="nkname"></td>
							</tr>
							<tr>
								<td>Address Line 1</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="adline1"></td>
							</tr>
							<tr>
								<td>Address Line 2</td>

								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="adline2"></td>
							</tr>
							<tr>

								<td><input type="image" src="images/button.png"
									onclick="editdiv(); return false;"></td>
							</tr>


						</table>
					</div>
				</div>
				<div id="addchildren">

					<div>
						<table id="editable">
							<tr>
								<td>First Name</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="fname"></td>
							</tr>
							<tr>
								<td>Middle Name</td>

								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="mname"></td>
							</tr>
							<tr>
								<td>Last Name</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="lname"></td>
							</tr>
							<tr>
								<td>Nick Name</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="nkname"></td>
							</tr>
							<tr>
								<td>Address Line 1</td>
								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="adline1"></td>
							</tr>
							<tr>
								<td>Address Line 2</td>

								<td>:</td>
								<td></td>
								<td></td>
								<td><input type="text" name="adline2"></td>
							</tr>
							<tr>

								<td><input type="image" src="images/button.png"
									onclick="editdiv(); return false;"></td>
							</tr>


						</table>
					</div>
				</div>
			</div>
			<div class="pageFooter"><%@include file="Footer.html"%></div>
		</div>
		<input type="hidden" name="fmemid" id="fmemid" value="test" /> <input
			type="hidden" name="action" id="action" value="getdetails2" />
	</form>
</body>
</html>