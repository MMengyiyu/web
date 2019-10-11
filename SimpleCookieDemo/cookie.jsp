<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>获取Cookie</title>
<%@ page import="java.io.*,java.util.*,java.net.*" %>
</head>
<body>
<%
	Cookie cookie = null;
	Cookie[] cookies = null;
	//获取Cookie数组
	cookies = request.getCookies();
	if(cookies != null){
		out.println("<h2>查找Cookie名与值</h2>");
		for(int i = 0; i < cookies.length; i++){
			cookie = cookies[i];
			
			out.println("参数名：" + cookie.getName());
			out.println("<br>");
			out.println("参数值：" + URLDecoder.decode(cookie.getValue(), "utf-8") + "<br>");
			out.println("---------------------<br>");
		}
	} else {
		out.println("<h2>没有发现Cookie</h2>");
	}
	
%>
</body>
</html>