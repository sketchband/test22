<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="test22.MemberBean"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="script.js"></script>
<script>
function IDcheck(id){
	if(id==null||id==""){
		alert("아이디를 입력해주세요.");
		document.reg.id.focus();
		return
	}else{
		url = "IDcheck.jsp?id="+id;
		window.open(url,"ID중복확인","width=400,height=90");
		return
	}
		
}
</script>
<center><h2>회원가입</h2></center>
<form name="reg" method="post" action="insert_Proc.jsp">
<div align="center">
<table>
<tr>
<td>아이디</td>
<td><input name="id"><input type="button" value="ID중복확인" onclick="IDcheck(this.form.id.value)"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input name="pw" type="password"></td>
</tr>
<tr>
<td>비밀번호 확인</td>
<td><input name="repw" type="password"></td>
</tr>
<tr>
<td>이름</td>
<td><input name="name"></td>
</tr>
<tr>
<td>이메일</td>
<td><input name="email" type="email"></td>
</tr>
<tr>
<td>직업</td>
<td><select name="job">
<option value="0" selected="selected">선택해주세요.
<option value="프로그래머">프로그래머
<option value="의사">의사
<option value="아르바이트">아르바이트
<option value="무직">무직
</select>
</td>
</tr>

<tr>
<td>취미</td>

<td>
<input type="checkbox" name="hobby" value="낚시">낚시
<input type="checkbox" name="hobby" value="축구">축구
<input type="checkbox" name="hobby" value="독서">독서
</td>
</tr>
<tr>
<td></td>
<td>
<input type="checkbox" name="hobby" value="영화">영화
<input type="checkbox" name="hobby" value="게임">게임
<input type="checkbox" name="hobby" value="산책">산책
</td>
</tr>
<tr>
<td>우편번호</td>
<td><input name="zipcode" readonly="readonly" size = "5">
	<input type="button" value="우편번호 찾기" onclick="zipCheck()">
</td>
<td>우편번호를 검색하세요.</td>
</tr>
<tr>
<td>주소</td>
<td><input name="address" size="30"></td>
<td>주소를 입력해주세요.</td>
</tr>
<tr>
<td></td>
<td><input type="button" value="회원가입" onclick="Insert_check()">
	<input type="button" value="취소" onclick="location.href='main.jsp'">
</table>
</div>
</form>
</body>
</html>