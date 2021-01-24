package vn.funix.prj321x.project4.gui.controller;

import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.funix.prj321x.project4.bll.service.PostService;
import vn.funix.prj321x.project4.bll.service.UserService;
import vn.funix.prj321x.project4.bll.utils.ServiceUtil;
import vn.funix.prj321x.project4.core.common.CoreConstant;
import vn.funix.prj321x.project4.core.dto.PostDto;
import vn.funix.prj321x.project4.gui.common.WebConstant;
import vn.funix.prj321x.project4.gui.utils.SessionUtil;

@WebServlet(urlPatterns = {
		WebConstant.URL_POST_DETAIL
})
public class PostDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		CoreConstant.info(req, resp, this.getClass(), "doGet");

		PostService postService = ServiceUtil.getPostServiceInstance();

		PostDto post = (PostDto) postService
				.findById(Integer.valueOf(req.getParameter("id")));

		if (Objects.nonNull(post)) {
			req.setAttribute("post", post);
			req.getRequestDispatcher("views/reader/postDetail.jsp").forward(req,
					resp);

		} else {
			req.getRequestDispatcher("/error.jsp").forward(req, resp);

		}

	}

}
