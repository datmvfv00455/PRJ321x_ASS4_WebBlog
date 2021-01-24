package vn.funix.prj321x.project4.gui.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.funix.prj321x.project4.bll.service.PostService;
import vn.funix.prj321x.project4.bll.utils.ServiceUtil;
import vn.funix.prj321x.project4.core.common.CoreConstant;
import vn.funix.prj321x.project4.core.dto.PostDto;
import vn.funix.prj321x.project4.core.utils.ObjectUtils;
import vn.funix.prj321x.project4.gui.common.WebConstant;
import vn.funix.prj321x.project4.gui.model.PostModel;
import vn.funix.prj321x.project4.gui.utils.SessionUtil;

@WebServlet(urlPatterns = {
		WebConstant.URL_POST_EDIT
})
public class PostEditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		CoreConstant.info(req, resp, this.getClass(), "doGet");

		PostService postService = ServiceUtil.getPostServiceInstance();

		PostDto post = (PostDto) postService
				.findById(Integer.valueOf(req.getParameter("id")));

		if (Objects.nonNull(post)) {
			req.setAttribute("post", post);
			req.getRequestDispatcher("views/author/postEdit.jsp").forward(req,
					resp);

		} else {
			req.getRequestDispatcher("/error.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		CoreConstant.info(req, resp, this.getClass(), "doPost");

		req.setCharacterEncoding("UTF-8");

		PostModel postModel = ObjectUtils.populate(PostModel.class, req);

		PostDto postDto = postModel.getBean();
		postDto.setPublish(req.getParameter("bean.isPublish"));
		postDto.setCreatedDate(new Date());
		postDto.setAuthor((String) SessionUtil.getSessionInstance()
				.getAttribute(req, "user"));

		PostService postService = ServiceUtil.getPostServiceInstance();
		postService.update(postDto);

	}

}
