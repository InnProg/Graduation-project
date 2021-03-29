<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="UTF-8">
		<meta content="Буханцов Кирилл" name="author">
		<title>Личный кабинет</title>
		<link rel="icon" href="${contextPath}/resources/img/iconTitle.jpg" type="image/jpg">
		<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" href="${contextPath}/resources/css/main.css">
	</head>
	<body>

		<header>
			<div class="container">
				<!--div class row нужен для bootstrap-->
				<div class="row" style="background-color: #173542">
					<!--div class col-lg-2 это говорит о том, что логотип занимает 2 колоки сетки-->
					<div class="col-2 main-logo">
						<img src="${contextPath}/resources/img/logo.png">
					</div>
					<div class="col-xl-8 col-lg-8 col-md-8 align-self-center">
						<nav>
							<ul  class="d-flex">
								<li class="menu__item"><a href="/">Главная</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-xl-1 col-lg-2 col-md-2 align-self-center">
						<nav>
							<ul>
								<sec:authorize access="isAuthenticated()">
									<li class="menu__item"><a href="/logout">Выйти</a></li>
								</sec:authorize>
							</ul>

						</nav>
					</div>
				</div>
			</div>
		</header>


		
		<section class="container">
			<div class="row mt-3 align-self-center">




				<div class="navigation-menu col-2 px-0 mr-3 ">
					<div class="col-xl-10 offset-1 mt-3">
						<a href="/index" ><img src="${contextPath}/resources/img/big-lg.png"></a>
					</div>
					<div class="col-xl-8 offset-2">
						<p class="text-center">Профиль</p>
					</div>
					<nav class="col mt-5">
						<ul class="main-menu">
							<li class="mb-3"><img src="${contextPath}/resources/img/iconTests.png"><a href="/indicators">Показатели</a></li>
							<li class="mb-3"><img src="${contextPath}/resources/img/iconPersonalDate.png"><a href="/foodDiary">Дневник питания</a></li>
							<li class="mb-3"><img src="${contextPath}/resources/img/iconNutritionPlan.ico.png"><a href="">План питания</a>

								<ul class="ml-4">
									<li><a href="\planNutritionCreate">создать</a></li>
									<li><a href="\planNutritionSelect">выбрать</a></li>
								</ul>

							</li>
							<li class="mb-3"><img src="${contextPath}/resources/img/iconResult.png"><a href="">Результаты</a></li>
							<li class="mb-3"><img src="${contextPath}/resources/img/iconSettings.png"><a href="\settings">Настройки</a></li>
						</ul>
					</nav>
				</div>




				<main class="col">


					<p>Привет, ${pageContext.request.userPrincipal.name}!</p>


					<div class="row">
						
						

					</div>


				</main>


			</div>

		</section>


	</body>

</html>
