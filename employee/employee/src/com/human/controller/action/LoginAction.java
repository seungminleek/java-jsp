package com.human.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.EmployeeDAO;
import com.human.dto.EmployeeVO;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeDAO eDao = EmployeeDAO.getInstance();
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String lev = request.getParameter("lev");
		String url = "";

		EmployeeVO eVo = eDao.checkID(id);

		if (eVo != null) {
			if (pass.equals(eVo.getPass())) {
				if (lev.equals(eVo.getLev())) {
					url = "employee/login.jsp";
					HttpSession session = request.getSession();
					session.setAttribute("emp", eVo);
				} else {
					url = "employee/loginForm.jsp";
					request.setAttribute("message", "권한자를 확인해주세요.<br>");
				}
			} else {
				url = "employee/loginForm.jsp";
				request.setAttribute("message", "비밀번호가 틀렸습니다.<br>");
			}
		} else {
			url = "employee/loginForm.jsp";
			request.setAttribute("message", "등록되지 않은 아이디 입니다.<br>");
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
