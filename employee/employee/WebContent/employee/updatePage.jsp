<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/emp.css" rel="stylesheet">
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<form method="post" action="HrServlet?command=info_update" name="frm">
		<div align="center">
			<table>
				<tr>
					<td style="width: 20%">${emp.name}님반갑습니다.</td>
					<td style="width: 20%">레벨: ${emp.lev}</td>
					<td style="width: 20%"><a href="HrServlet?command=logout">로그아웃</a></td>
					<td style="width: 20%; height:50px">
					<c:choose>
							<c:when test="${emp.lev eq 'A'}">
								<a href="HrServlet?command=emp_add_form">사원 등록</a>
							</c:when>
							<c:otherwise>
								사원 등록<br>
								<label style="color: red">(관리자로 로그인 후 사용 가능)</label>
							</c:otherwise>
					</c:choose>
					</td>
					<td style="width: 20%"><a href="HrServlet?command=mypage_form&id=${emp.id}">마이페이지</a></td>
			</table>
		</div>
		<div align="center">
			<table>
				<tr>
					<td colspan="2">마이페이지</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>${emp.id}</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>${emp.pass}</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${emp.name}</td>
				</tr>
				<tr>
					<td>권한</td>
					<td>
						<c:choose>
							<c:when test="${emp.lev eq 'A'}">
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
							<c:when test="${emp.gender == 1}">
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
					<td>${emp.phone}</td>
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