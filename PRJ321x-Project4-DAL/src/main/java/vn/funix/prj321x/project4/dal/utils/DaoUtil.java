package vn.funix.prj321x.project4.dal.utils;

import vn.funix.prj321x.project4.dal.dao.PostDao;
import vn.funix.prj321x.project4.dal.dao.UserDao;
import vn.funix.prj321x.project4.dal.daoImpl.PostDaoImpl;
import vn.funix.prj321x.project4.dal.daoImpl.UserDaoImpl;

public class DaoUtil {

	private static volatile PostDao postDao = null;

	private static volatile UserDao userDao = null;

	public static final PostDao getPostDaoInstance() {
		if (postDao == null) {
			synchronized (PostDao.class) {
				if (postDao == null) {
					postDao = new PostDaoImpl();
				}
			}
		}
		return postDao;
	}

	public static final UserDao getUserDaoInstance() {
		if (userDao == null) {
			synchronized (UserDao.class) {
				if (userDao == null) {
					userDao = new UserDaoImpl();
				}
			}
		}
		return userDao;
	}

}
