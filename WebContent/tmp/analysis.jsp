<%@ page import="swTeam.BaekjoonCrawler_tmp,swTeam.Cookie, swTeam.SourceAnalysis, java.util.*" language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
   <style>
      .code {
         border:inset 2px silver; 
         min-width:700px;
         min-height:200px; 
         padding:1 1 1 1;
         font-size:9pt; 
         overflow:auto;
      }
   </style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Cookie ck = Cookie.getInstance();
BaekjoonCrawler_tmp boj = new BaekjoonCrawler_tmp(ck.loginCookie);
SourceAnalysis sa = new SourceAnalysis(request.getParameter("type"));
String code = boj.getSource(request.getParameter("source"));
%>
<h1>���� ��ȣ : <%=request.getParameter("source") %></h1>
<h2>�ҽ� �ڵ�</h2>
<div class="code">
<pre>
<%
	out.print(code);
%>
</pre>
</div>
<h2>�м� ���</h2>
<div class="code">
<pre>
<%
	out.print(sa.Analysis(ck.userID, request.getParameter("pronum"), code));
%>
</pre>
</div>
</body>
</html>