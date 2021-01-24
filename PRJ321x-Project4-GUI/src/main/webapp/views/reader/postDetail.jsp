<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<fmt:message
	var="title_post_edit"
	key="title.post.edit"
	bundle="${messages}" />

<fmt:message
	var="label_welcomeback"
	key="label.welcomeback"
	bundle="${messages}" />

<fmt:message
	var="title_post_all"
	key="title.post.detail"
	bundle="${messages}" />

<fmt:message
	var="label_login"
	key="label.login"
	bundle="${messages}" />

<c:url
	var="editPostLink"
	value="/post-edit">

	<c:param
		name="id"
		value="${post.id}" />
</c:url>

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

<style type="text/css">
.abc:hover {
	color: #fff;
	background-color: #4e73df;
	border-color: #4e73df
}

@media ( max-width : 766px) {
	.card-header {
		display: none;
	}
}

@media ( min-width : 766px) {
	.dropdownInfo {
		display: none;
	}
}
</style>

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
				class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top  ">

				<!-- Sidebar Toggle (Topbar) -->
				<button
					id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>

				<div
					id="requirement-title"
					style="padding-right: .75rem; padding-left: .75rem; color: #4e73df; font-weight: 600 !important; margin: 0 auto; font-size: xx-large; /* align-content: center;">
					${label_welcomeback}</div>


			</nav>


			<!-- Main Content -->
			<div id="content">
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="row">
						<!-- Dropdown Card Example -->

						<div class="col-sm-12">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->

								<div class="card-header ">
									<div
										class="btn abc"
										data-toggle="tooltip"
										data-placement="top"
										title="Author">${post.author }</div>

									<div
										class="btn abc"
										data-toggle="tooltip"
										data-placement="top"
										title="Status">${post.getStatus() }</div>

									<div
										class="btn abc"
										data-toggle="tooltip"
										data-placement="right"
										title="Date">${post.getSimpleDateFormat() }</div>

									<c:if test="${not empty user }">
										<a
											class="btn btn-primary"
											href="${editPostLink }"
											style="position: absolute; right: 0; margin-right: 20px;">Edit</a>
									</c:if>

								</div>


								<div
									class=" card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class=" m-0 font-weight-bold text-primary ">
										${post.summary}</h6>


									<div
										style="padding-left: 10px;"
										class="dropdown no-arrow dropdownInfo">
										<a
											class="dropdown-toggle"
											href="#"
											role="button"
											id="dropdownMenuLink"
											data-toggle="dropdown"
											aria-haspopup="true"
											aria-expanded="false"> <i
											class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
											aria-labelledby="dropdownMenuLink"
											x-placement="bottom-end"
											style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(17px, 19px, 0px);">


											<div class="dropdown-header">Post Info:</div>


											<div
												class="dropdown-item"
												style="pointer-events: none">
												Author: <span>${post.author }</span>

											</div>

											<div
												class="dropdown-item"
												style="pointer-events: none">
												Status: <span>${post.getStatus() }</span>

											</div>

											<div
												class="dropdown-item"
												style="pointer-events: none">
												Date: <span>${post.getSimpleDateFormat() }</span>

											</div>

											<div class="dropdown-divider"></div>

											<c:if test="${not empty user }">
												<div class="dropdown-header">Post Action:</div>

												<a
													class="dropdown-item"
													href="${editPostLink }">Edit</a>
											</c:if>


										</div>
									</div>

								</div>

								<!-- Card Body -->
								<div class="card-body">${post.detail }</div>
							</div>

						</div>

					</div>





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
	<script src="templete/home/js/postEdit.js"></script>

</body>
</html>