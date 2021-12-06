<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<c:if test="${not empty user}">
				<a class="navbar-brand" href="/pessoas">Pessoa</a>
				<a class="navbar-brand" href="/usuarios">Usu�rio</a>
			</c:if>
						
					

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link " aria-current="page"
						href="/">Home</a></li>

					<c:if test="${not empty user}">
						<li class="nav-item"><a class="nav-link" href="#">${user.nome}</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="/logout">Logout</a></li>
					</c:if>
					<c:if test="${empty user}">
						<li class="nav-item"><a class="nav-link" href="/usuario">Sign-in</a></li>
						<li class="nav-item"><a class="nav-link active" href="/login">Login</a></li>
					</c:if>


				</ul>
			</div>
		</div>
	</nav>