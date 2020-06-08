package com.human.controller;

import com.human.controller.action.Action;
import com.human.controller.action.EmpAddFormAction;
import com.human.controller.action.EmpAddInfoAction;
import com.human.controller.action.InfoUpdateAction;
import com.human.controller.action.LoginAction;
import com.human.controller.action.LoginFormAction;
import com.human.controller.action.LogoutAction;
import com.human.controller.action.MypageFormAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory: " + command);
		
		if(command.equals("login_form")) {
			action = new LoginFormAction();
		}else if(command.equals("login")) {
			action = new LoginAction();
		}else if(command.equals("mypage_form")) {
			action = new MypageFormAction();
		}else if(command.equals("info_update")) {
			action = new InfoUpdateAction();
		}else if(command.equals("logout")) {
			action = new LogoutAction();
		}else if(command.equals("emp_add_form")) {
			action = new EmpAddFormAction();
		}else if(command.equals("add_info")) {
			action = new EmpAddInfoAction();
		}
		return action;
	}
}
