<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String pkgName = (String) request.getAttribute("pkgName");
	String jarPath = (String) request.getAttribute("jarPath");
	String date = (String) request.getAttribute("date");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>##### Test Application #####</title>
</head>
<body>
	<img src="img/redhat.png" width="300">
	<br>
	<a href="session">Session</a>&nbsp;|&nbsp;
	<a href="status">Status</a>&nbsp;|&nbsp;
	<a href="jarCheck">JAR Check</a>
	<br>
	<b>Current Time : <%=date%></b>
	<h1>[JAR File Search]</h1>
	<form action="jarCheck" name=form>
		<input type=text name="pkgName" value="<%=pkgName%>"> <input
			type=submit name=reqButton value="FIND">
	</form>
	<br>
	<b> - <%=pkgName%> <br> <%=jarPath%>
	</b>
</body>
</html>
