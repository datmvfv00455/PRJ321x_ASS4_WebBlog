<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="vn.funix.prj321x.project4.gui.common.WebConstant"%>
<c:url
	var="postNewForm"
	value="<%=WebConstant.URL_POST_NEW%>">

</c:url>
<fmt:message
	var="title_post_new"
	key="title.post.new"
	bundle="${messages}" />
<!DOCTYPE html>
<html>
<head>
<title>${title_post_new}</title>
<!-- Custom fonts for this template-->
<link
	href="<c:url value='/templete/home/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link
	href="<c:url value='/templete/home/css/sb-admin-2.min.css'/>"
	rel="stylesheet">

</head>
<body id="page-top">
	<div id="wrapper">
		<!-- HEADER -->
		<%@include file="/common/header.jsp"%>
		<!-- END HEADER -->
		<!-- Content Wrapper -->
		<div
			id="content-wrapper"
			class="d-flex flex-column">

			<nav
				class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top">

				<!-- Sidebar Toggle (Topbar) -->
				<button
					id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>

				<div
					id="requirement-title"
					style="padding-right: .75rem; padding-left: .75rem; color: #4e73df; font-weight: 600 !important; margin: 0 auto; font-size: xx-large; /* align-content: center;">${title_post_new}</div>
			</nav>



			<!-- Main Content -->
			<div id="content">
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<form
						id="edit-form"
						method="post"
						action="${postNewForm}">

						<div class="form-group">
							<label>Title: </label>
							<!---->
							<input
								name="bean.title"
								type="text"
								class="form-control"
								value="${post.title }">
							<!---->
						</div>
						<div class="form-group">
							<label>Summary: </label> <input
								name="bean.summary"
								type="text"
								class="form-control"
								value="${post.summary }">
							<!---->
						</div>
						<textarea id="editor">${post.detail}</textarea>
						<div class="form-check form-group">
							<!---->
							<input
								id="publishChkBox"
								class="
								form-check-input"
								type="checkbox"
								checked="checked"
								value="true"
								name="bean.isPublish">
							<!---->
							<label class="form-check-label">Publish</label>
						</div>
						<button
							type="submit"
							class="btn btn-primary">Submit</button>
					</form>

				</div>
				<!-- End Page Content -->
			</div>
			<!-- Footer -->
			<footer
				class="container sticky-footer bg-white container my-auto copyright">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->
		</div>
		<!-- /.container-fluid -->
	</div>

	<!-- End of Main Content -->

	<!-- BEGIN FOOTER -->
	<%@include file="/common/footer.jsp"%>
	<!-- END FOOTER -->

	<!-- <script src="ckeditor/ckeditor.js"></script>	 -->
	<script
		charset="utf-8"
		src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

	<!-- Custom scripts for this pages-->
	<script src="templete/home/js/postNew.js"></script>

</body>
</html>