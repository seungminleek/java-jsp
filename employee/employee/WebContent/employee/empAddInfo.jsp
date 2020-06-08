<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
div {
	width: 971px;
	margin: 0;
	margin-left: auto;
	margin-right: auto;
}

table th, td {
	border: 1px solid #000;
	text-align: center;
}

a {
	text-decoration: none;
	color: black;
}

a:HOVER {
	text-decoration: underline;
	color: green;
}
</style>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<form method="post" action="HrServlet?command=add_info" name="frm">
		<div align="center">
			<table>
				<tr>
					<td style="width: 20%">${emp.name}님반갑습니다.</td>
					<td style="width: 20%">레벨: ${emp.lev}</td>
					<td style="width: 20%"><a href="HrServlet?command=logout">로그아웃</a></td>
					<td style="width: 20%; height:50px">
					<a href="HrServlet?command=emp_add_form">사원 등록</a>
					</td>
					<td style="width: 20%"><a href="HrServlet?command=mypage_form&id=${emp.id}">마이페이지</a></td>
			</table>
		</div>
		<div align="center">
			<table>
				<tr>
					<td colspan="2"><h2>사원등록</h2>
					<label style="color:red">회원 등록에 성공했습니다.</label>
					</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>${newEmp.id}</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>${newEmp.pass}</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${newEmp.name}</td>
				</tr>
				<tr>
					<td>권한</td>
					<td>
						<c:choose>
							<c:when test="${newEmp.lev eq 'a'}">
							관리자
							</c:when>
							<c:otherwise>
							일반회원
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<c:choose>
							<c:when test="${newEmp.gender == 1}">
							남자
							</c:when>
							<c:otherwise>
							여자
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td>번호</td>
					<td>${newEmp.phone}</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="메인페이지로 이동" onclick="location.href='HrServlet?command=login&id=${emp.id}&pass=${emp.pass}&lev=${emp.lev}'">
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>