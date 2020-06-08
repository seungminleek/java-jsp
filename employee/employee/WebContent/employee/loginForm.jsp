<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/emp.css" rel="stylesheet">
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript" src="script/emp.js"></script>
</head>
<body>
	<form method="post" action="HrServlet?command=login" name="frm">
		<div align="center">
			<table>
				<tr>
					<td style="width: 20%"></td>
					<td style="width: 20%"></td>
					<td style="width: 20%">로그인</td>
					<td style="width: 20%">사원 등록<br> 
						<label style="color: red">(관리자로 로그인 후 사용 가능)</label>
					</td>
					<td style="width: 20%">마이페이지<br> 
						<label style="color: red">(로그인 후 사용 가능)</label>
					</td>
			</table>
		</div>
		<div align="center">
			<table>
				<tr>
					<td colspan="2">로그인</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td>레벨</td>
					<td>
						<select name="lev">
							<option value="A">운영자</option>
							<option value="B">일반 회원</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						${message}
						<input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>