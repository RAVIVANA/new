package com.banking.DAO;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.banking.model.User;

@Component
public class UserDAL 
{
	@PersistenceContext
	EntityManager em;

	public User loadUserByUserName(String username)
	{
		User user;
		
		user = (User) em.createQuery("select u from user where u.username = : uname").getSingleResult();
		
		return user;
		
	}
}
