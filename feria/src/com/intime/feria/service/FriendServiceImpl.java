package com.intime.feria.service;

import org.springframework.stereotype.Service;

import com.intime.feria.dao.FriendsDAO;
import com.intime.feria.dao.RequestsDAO;

/* 2020-08-07 장유정(기본세팅) 2 */
@Service
public class FriendServiceImpl implements FriendService{
	
	private FriendsDAO friendsDAO;
	private RequestsDAO requestsDAO;
	
	public void setFriendsDAO(FriendsDAO friendsDAO) {
		this.friendsDAO = friendsDAO;
	}
	
	public void setRequestsDAO(RequestsDAO requestsDAO) {
		this.requestsDAO = requestsDAO;
	}
}
