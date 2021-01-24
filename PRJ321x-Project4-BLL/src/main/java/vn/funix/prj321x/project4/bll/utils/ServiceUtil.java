package vn.funix.prj321x.project4.bll.utils;

import vn.funix.prj321x.project4.bll.service.PostService;
import vn.funix.prj321x.project4.bll.service.UserService;
import vn.funix.prj321x.project4.bll.serviceImpl.PostServiceImpl;
import vn.funix.prj321x.project4.bll.serviceImpl.UserServiceImpl;

public class ServiceUtil {

	private static volatile UserService userService = null;

	private static volatile PostService postService = null;

	public static PostService getPostServiceInstance() {
		if (postService == null) {
			synchronized (PostService.class) {
				if (postService == null) {
					postService = new PostServiceImpl();
				}
			}
		}
		return postService;
	}

	public static UserService getUserServiceInstance() {
		if (userService == null) {
			synchronized (UserService.class) {
				if (userService == null) {
					userService = new UserServiceImpl();
				}
			}
		}
		return userService;
	}
}
