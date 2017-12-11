package com.ktds.main.common;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionStore {

	private static SessionStore sessionStore;
	
	private Map<String, HttpSession> sessions;
	
	private SessionStore() {
		sessions = new HashMap<>();
	}
	
	public static synchronized SessionStore getInstance() {
		if ( sessionStore == null ) {
			sessionStore = new SessionStore();
		}
		return sessionStore;
	}
	
	public void add(String id, HttpSession session) {
		sessions.put(id, session);
	}
	
	public void remove(String id) {
		sessions.remove(id);
	}
	
	public HttpSession get(String id) {
		if ( sessions.containsKey(id) ) {
			return sessions.get(id);			
		}
		return null;
	}
	
}
