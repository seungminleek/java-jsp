<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/emp.css" rel="stylesheet">
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<form method="post" action="HrServlet?command=login" name="frm">
		<div align="center">
			<table>
				<tr>
					<td style="width: 20%">${emp.name}님반갑습니다.</td>
					<td style="width: 20%">레벨: ${emp.lev}</td>
					<td style="width: 20%"><a href="HrServlet?command=logout">로그아웃</a></td>
					<td style="width: 20%; height: 50px"><c:choose>
							<c:when test="${emp.lev eq 'A'}">
								<a href="HrServlet?command=emp_add_form">사원 등록</a>
							</c:when>
							<c:otherwise>
								사원 등록<br>
								<label style="color: red">(관리자로 로그인 후 사용 가능)</label>
							</c:otherwise>
						</c:choose></td>
					<td style="width: 20%"><a
						href="HrServlet?command=mypage_form&id=${emp.id}">마이페이지</a></td>
			</table>
			<h2>사원 전용 페이지</h2>
			<table>
				<tr>
					<td><img
						src="${pageContext.request.contextPath}/images/person.jpg"
						width="200px" height="200px"></td>
					<td>
						<table style="width: 500px">
							<tr>
								<th>아이디</th>
								<td>${emp.id}</td>
							</tr>
							<tr>
								<th>이름</th>
								<td>${emp.name}</td>
							</tr>
							<tr>
								<th>등록일</th>
								<td><fmt:formatDate value="${emp.enter}" /></td>
							</tr>
							<tr>
								<th>권한</th>
								<td><c:choose>
										<c:when test="${emp.lev eq 'A'}">
							관리자
							</c:when>
										<c:otherwise>
							일반회원
							</c:otherwise>
									</c:choose></td>
							</tr>
							<tr>
								<th>성별</th>
								<td><c:choose>
										<c:when test="${emp.gender == 1}">
								남자
								</c:when>
										<c:otherwise>
								여자
								</c:otherwise>
									</c:choose></td>
							</tr>
							<tr>
								<th>번호</th>
								<td>${emp.phone}</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>