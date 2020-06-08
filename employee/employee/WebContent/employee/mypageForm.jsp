<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/emp.css" rel="stylesheet">
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript" src="script/emp.js"></script>
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
					<td><input type="text" name="id" value="${emp.id}" readonly></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${emp.name}"></td>
				</tr>
				<tr>
					<td>권한</td>
					<td>
						<select name="lev">
							<option value="A">운영자</option>
							<option value="B">일반 회원</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<select name="gender">
							<option value="1">남자</option>
							<option value="2">여자</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><input type="text" name="phone" value="${emp.phone}"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정" onclick="return passCheck()">&nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>