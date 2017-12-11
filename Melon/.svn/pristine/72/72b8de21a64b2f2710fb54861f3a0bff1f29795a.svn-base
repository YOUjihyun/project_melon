package com.ktds.main.common;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.ktds.main.vo.UserVO;

public class SessionHandler implements HttpSessionListener {

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		UserVO user = (UserVO) se.getSession().getAttribute("_USER_");
		SessionStore.getInstance().remove(user.getId());
		HttpSessionListener.super.sessionDestroyed(se);
	}
	
}
