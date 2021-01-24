<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<fmt:message
	var="label_sidebarbrand"
	key="label.sidebarbrand"
	bundle="${messages}" />
<fmt:message
	var="label_requirement"
	key="label.requirement"
	bundle="${messages}" />
<fmt:message
	var="label_requirement1"
	key="label.requirement1"
	bundle="${messages}" />
<fmt:message
	var="label_requirement2"
	key="label.requirement2"
	bundle="${messages}" />
<fmt:message
	var="label_requirement3"
	key="label.requirement3"
	bundle="${messages}" />
<fmt:message
	var="label_requirement4"
	key="label.requirement4"
	bundle="${messages}" />
<fmt:message
	var="label_requirement5"
	key="label.requirement5"
	bundle="${messages}" />
<fmt:message
	var="label_requirement6"
	key="label.requirement6"
	bundle="${messages}" />
<fmt:message
	var="label_requirement7"
	key="label.requirement7"
	bundle="${messages}" />
<fmt:message
	var="label_advanced"
	key="label.advanced"
	bundle="${messages}" />
<fmt:message
	var="label_advanced1"
	key="label.advanced1"
	bundle="${messages}" />

<div
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar Brand -->
	<a
		href='<c:url value='/' /> '
		class="sidebar-brand 
		d-flex align-items-center justify-content-center sidebar-brand-text
		 mx-3">${label_sidebarbrand}</a>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<ul class="navbar-nav ml-auto ">

		<c:choose>

			<c:when test="${ not empty user  }">

				<!-- Nav Item - User Information -->
				<li class="nav-item dropdown no-arrow ">
					<!--  --> <a
					class="nav-link dropdown-toggle d-flex align-items-center justify-content-center "
					href="#"
					id="userDropdown"
					role="button"
					data-toggle="dropdown"
					aria-haspopup="true"
					aria-expanded="false"> <!-- Avatar --> <img
						class="img-profile rounded-circle"
						src="https://source.unsplash.com/QAB-WJcbgJk/60x60"
						style="margin: 0px 10px 0px 10px;"> <!--Avatar  --> <span
						class="mr-2 d-none d-lg-inline text-white-600 small">${user}
					</span>
				</a>

					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown"
						x-placement="bottom-end"
						style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(224px, 64px, 0px);">

						<a
							class="dropdown-item"
							href="<c:url value='/post-new' /> "> <i
							class="fas fa-plus fa-sm fa-fw mr-2 text-gray-400"></i> New Post
						</a> <a
							class="dropdown-item"
							href="<c:url value='/' /> "> <i
							class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> My Post
						</a>

						<div class="dropdown-divider"></div>

						<a
							class="dropdown-item"
							data-toggle="modal"
							data-target="#exampleModal"> <i
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							Logout
						</a>
					</div>
				</li>

			</c:when>




			<c:otherwise>

				<!-- Nav Item - Login -->
				<li class="nav-item ">
					<!--  --> <a
					href="login"
					class="nav-link  d-flex align-items-center justify-content-center ">
						<i
						class="fas fa-sign-in-alt"
						style="font-size: 1.2rem"></i> <span
						class="mr-2 d-none d-lg-inline text-white-600 small">Login</span>


				</a>
				</li>
			</c:otherwise>

		</c:choose>


	</ul>

	<!-- Modal -->
	<div
		class="modal fade"
		id="exampleModal"
		tabindex="-1"
		role="dialog"
		aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div
			class="modal-dialog"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5
						class="modal-title"
						id="exampleModalLabel">Ready to Leave?</h5>
					<button
						type="button"
						class="close"
						data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>

					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">

					<button
						class="btn btn-secondary"
						type="button"
						data-dismiss="modal">Cancel</button>
					<a
						class="btn btn-primary"
						href="logout"
						style="margin-left: 5px;">Logout</a>
				</div>
			</div>
		</div>
	</div>



	<!-- Heading -->
	<div class="sidebar-heading">${label_requirement}</div>

	<hr class="sidebar-divider d-none d-md-block">


	<ul class="navbar-nav ">

		<li class="nav-item  "><a class="nav-link"> <i
				class="fas fa-fw fa-check"></i> <span>${label_requirement1}</span></a></li>

		<li class="nav-item"><a class="nav-link"> <i
				class="fas far fa-check"></i> <span>${label_requirement2}</span></a></li>

		<li class="nav-item"><a class="nav-link"> <i
				class="fas far fa-check"></i> <span>${label_requirement3}</span></a></li>

		<li class="nav-item"><a class="nav-link"> <i
				class="fas far fa-check"></i> <span>${label_requirement4}</span></a></li>

		<li class="nav-item"><a class="nav-link"> <i
				class="fas far fa-check"></i> <span>${label_requirement5}</span></a></li>

		<li class="nav-item"><a class="nav-link"> <i
				class="fas far fa-check"></i> <span>${label_requirement6}</span></a></li>

		<li class="nav-item"><a class="nav-link"> <i
				class="fas far fa-check"></i> <span>${label_requirement7}</span></a></li>



	</ul>




	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<div class="sidebar-heading">${label_advanced}</div>

	<ul class="navbar-nav ">
		<!-- Nav Item - Form -->
		<li class="nav-item"><a class="nav-link"> <i
				class="fas fa-check "></i> <span>${label_advanced1}</span></a></li>


	</ul>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">



</div>
