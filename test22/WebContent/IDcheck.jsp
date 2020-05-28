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
<% String id = request.getParameter("id");
   
   
   boolean check = dao.IDcheck(id);
   
   if(check){
	   out.println(id+"는 이미 존재하는 아이디 입니다.");
   }else{
	   out.println(id+"는 사용가능한 아이디 입니다.");
   }
%>

</body>
</html>