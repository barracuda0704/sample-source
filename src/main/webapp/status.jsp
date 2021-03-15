<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String view = (String) request.getAttribute("view");
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
	<h1>[JBoss Status]</h1>
	<a href="status?display=INFO">INFO</a>&nbsp;|&nbsp;
	<a href="status?display=THREAD">THREAD</a>&nbsp;|&nbsp;
	<a href="status?display=JVM">JVM</a>
	<br>
	<pre style="font-size: 15px;">
	<%=view%>
	</pre>
</body>
</html>
