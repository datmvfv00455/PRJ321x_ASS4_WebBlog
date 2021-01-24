package vn.funix.prj321x.project4.gui.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.funix.prj321x.project4.core.common.CoreConstant;
import vn.funix.prj321x.project4.gui.common.WebConstant;

@WebFilter(urlPatterns = {
		WebConstant.URL_POST_EDIT,
		WebConstant.URL_POST_NEW,
		WebConstant.FILTER_LOGIN_JSP
})
public class LoginFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest  req     = (HttpServletRequest) request;
		HttpServletResponse resp    = (HttpServletResponse) response;
		HttpSession         session = req.getSession(false);

		CoreConstant.info(req, resp, this.getClass(), "doFilter");

		boolean isLoggedIn = (session == null
				|| session.getAttribute(WebConstant.USER) == null);

		if (isLoggedIn) {
			// User is not logged in, redirect to login page.
			resp.sendRedirect(req.getContextPath());
		} else {
			// Logged-in user found, continue request.
			chain.doFilter(req, resp);
		}

	}

}
