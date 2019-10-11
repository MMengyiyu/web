<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="java.net.*" %>
<meta charset="UTF-8">
<title>设置Cookie</title>
</head>
<body>
<% 
	//解决中文乱码
	String str = URLEncoder.encode(request.getParameter("name"),"utf-8");
	//设置name和url的cookie
	Cookie name = new Cookie("nane", str);
	Cookie url = new Cookie("url", request.getParameter("url"));
	//设置cookie过期时间
	name.setMaxAge(60*60*24);
	url.setMaxAge(60*60*24);
	//在响应头部添加cookie
	response.addCookie(name);
	response.addCookie(url);
%>

<h1>设置 Cookie</h1>

<ul>
	<li><p><b>网站名:</b>
	   <%= request.getParameter("name")%>
	</p></li>
	<li><p><b>网址:</b>
	   <%= request.getParameter("url")%>
	</p></li>
</ul>
</body>
</html>