package vn.funix.prj321x.project4.gui.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import vn.funix.prj321x.project4.bll.service.UserService;
import vn.funix.prj321x.project4.bll.utils.ServiceUtil;
import vn.funix.prj321x.project4.core.common.CoreConstant;
import vn.funix.prj321x.project4.core.dto.UserDto;
import vn.funix.prj321x.project4.core.utils.ObjectUtils;
import vn.funix.prj321x.project4.gui.common.WebConstant;
import vn.funix.prj321x.project4.gui.model.UserModel;
import vn.funix.prj321x.project4.gui.utils.SessionUtil;

@WebServlet(urlPatterns = {
		WebConstant.URL_LOGIN,
		WebConstant.URL_LOGOUT
})
public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		CoreConstant.info(req, resp, this.getClass(), "doGet");

		SessionUtil session = SessionUtil.getSessionInstance();

		if (req.getRequestURI().contains(WebConstant.URL_LOGIN)) {
			req.getRequestDispatcher("views/login.jsp").forward(req, resp);

			session.setAttribute(
					req,
					WebConstant.URL_REFERER,
					req.getHeader("referer"));

		} else {
			session.remove(req, WebConstant.USER);
			resp.sendRedirect(req.getHeader("referer"));
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		CoreConstant.info(req, resp, this.getClass(), "doPost");

		Map<String, Object> jsonResponse = new HashMap<String, Object>();

		UserModel userModel = ObjectUtils.populate(UserModel.class, req);
		UserDto   bean      = userModel.getBean();

		UserService userService = ServiceUtil.getUserServiceInstance();
		boolean     checkLogin  = userService.authenticate(bean);

		SessionUtil session = SessionUtil.getSessionInstance();

		if (checkLogin) {
			session.setAttribute(
					req,
					WebConstant.USER,
					bean.getUserName());

			jsonResponse.put(
					WebConstant.URL_REFERER,
					session.getAttribute(req,
							WebConstant.URL_REFERER));
			session.remove(req,
					WebConstant.URL_REFERER);
		} else {
			jsonResponse.put(
					WebConstant.ERROR,
					WebConstant.MESSAGES_BUNDLE
							.getString("label.error.password.wrong"));

		}

		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		resp.getWriter().write(new Gson().toJson(jsonResponse));

	}
}
