package com.human.controller.action;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.EmployeeDAO;
import com.human.dto.EmployeeVO;

public class EmpAddInfoAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String lev = request.getParameter("lev");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		
		EmployeeVO eVo = new EmployeeVO();
		
		eVo.setId(id);
		eVo.setPass(pass);
		eVo.setName(name);
		eVo.setLev(lev);
		eVo.setGender(gender);
		eVo.setPhone(phone);
		
		EmployeeDAO eDao = EmployeeDAO.getInstance();
		eDao.addInfo(eVo);
		
		HttpSession session = request.getSession();
		session.setAttribute("newEmp", eVo);
		request.getRequestDispatcher("employee/empAddInfo.jsp").forward(request, response);
	}

}
