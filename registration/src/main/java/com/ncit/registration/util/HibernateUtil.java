package com.ncit.registration.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class HibernateUtil {
	public static Session getSession(SessionFactory sessionFactory) {
		Session sess = sessionFactory.getCurrentSession();
		if (sess == null) {
			sess = sessionFactory.openSession();
		}
		return sess;
	}

}
