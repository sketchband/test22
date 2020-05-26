<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dao" class="test22.MemberDAO"/>
<jsp:useBean id="bean" class="test22.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	boolean check = dao.Insert(bean);

	String msg = "회원가입 실패";
	if(check)
		msg = "회원가입 성공";
%>
<script type="text/javascript">
alert("<%=msg%>");
</script>
</body>
</html>