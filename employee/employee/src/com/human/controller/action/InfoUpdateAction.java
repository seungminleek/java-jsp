package com.human.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.EmployeeDAO;
import com.human.dto.EmployeeVO;

public class InfoUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String lev = request.getParameter("lev");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		HttpSession session = request.getSession();
		
		EmployeeVO eVo = new EmployeeVO();
		
		eVo.setId(id);
		eVo.setPass(pass);
		eVo.setName(name);
		eVo.setLev(lev);
		eVo.setGender(gender);
		eVo.setPhone(phone);
		
		EmployeeDAO eDao = EmployeeDAO.getInstance();
		eDao.updateInfo(eVo);
		
		EmployeeVO empVo = eDao.checkID(id);
		
		session.removeAttribute("emp");
		session.setAttribute("emp", empVo);
		
		request.getRequestDispatcher("employee/updatePage.jsp").forward(request, response);
	}

}
