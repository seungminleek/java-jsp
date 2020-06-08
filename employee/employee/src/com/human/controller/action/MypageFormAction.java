package com.human.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.EmployeeDAO;
import com.human.dto.EmployeeVO;

public class MypageFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");		
		String url = "employee/mypageForm.jsp";
		
		EmployeeDAO eDao = EmployeeDAO.getInstance();
		EmployeeVO eVo = eDao.checkID(id);
		
		HttpSession session = request.getSession();
		session.removeAttribute("emp");
		session.setAttribute("emp", eVo);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
