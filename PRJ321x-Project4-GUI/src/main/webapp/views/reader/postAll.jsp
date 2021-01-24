<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<fmt:message
	var="title_post_all"
	key="title.post.all"
	bundle="${messages}" />

<fmt:message
	var="label_login"
	key="label.login"
	bundle="${messages}" />
<fmt:message
	var="label_title_signup"
	key="label.title.signup"
	bundle="${messages}" />

<!DOCTYPE html>
<html>
<head>

<title>${title_post_all}</title>

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
				class="  navbar navbar-expand navbar-light bg-white topbar mb-4 static-top  ">

				<!-- Sidebar Toggle (Topbar) -->
				<button
					id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>

				<div
					id="requirement-title"
					style="padding-right: .75rem; padding-left: .75rem; color: #4e73df; font-weight: 600 !important; margin: 0 auto; font-size: xx-large; /* align-content: center;">
					${title_post_all}</div>


			</nav>

			<!-- Main Content -->
			<div id="content">
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<c:forEach
						items="${post_list}"
						var="post">

						<c:url
							var="loadPostLink"
							value="/post-detail">

							<c:param
								name="id"
								value="${post.id}" />
						</c:url>

						<div class="row">
							<div class="col-sm-12">
								<!-- Dropdown Card Example -->
								<div class="card shadow mb-4">

									<!-- Card Header - Dropdown -->
									<div
										class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

										<h6 class="m-0 font-weight-bold text-primary">
											<a href="${loadPostLink}">${post.title}</a>
										</h6>

										<div
											class="  d-flex flex-row align-items-center justify-content-end">
											<div style="padding-right: 20px;">${post.getSimpleDateFormat()}</div>

										</div>
									</div>

									<!-- Card Body -->
									<div class="card-body">${post.summary}</div>
								</div>
							</div>
						</div>

					</c:forEach>


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


</body>
</html>