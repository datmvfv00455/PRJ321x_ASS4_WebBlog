package vn.funix.prj321x.project4.gui.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.funix.prj321x.project4.bll.service.PostService;
import vn.funix.prj321x.project4.bll.utils.ServiceUtil;
import vn.funix.prj321x.project4.core.common.CoreConstant;
import vn.funix.prj321x.project4.core.dto.PostDto;
import vn.funix.prj321x.project4.gui.common.WebConstant;
import vn.funix.prj321x.project4.gui.utils.SessionUtil;

@WebServlet(urlPatterns = {
		WebConstant.URL_POST_ALL
})
public class PostAllController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		CoreConstant.info(req, resp, this.getClass(), "doGet");

		PostService   postService = ServiceUtil.getPostServiceInstance();
		List<PostDto> postList    = postService.getAll();

		req.setAttribute(WebConstant.POST_LIST, postList);

		req.getRequestDispatcher("views/reader/postAll.jsp").forward(req, resp);

	}

}
