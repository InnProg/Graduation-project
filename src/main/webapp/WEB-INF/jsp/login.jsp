<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="UTF-8">
		<meta content="Буханцов Кирилл" name="author">
		<title>Вход в ЛК</title>
		<link rel="icon" href="${contextPath}/resources/img/iconTitle.jpg" type="image/jpg">
		<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" href="${contextPath}/resources/css/main.css">
		<script type="text/javascript" src="${contextPath}/resources/js/jsAjaxLogin.js"></script>
	</head>

	<body>

	<%--выражения состоит в том, чтобы разрешить доступ аутентифицированным пользователям независимо от их ролей--%>
	<sec:authorize access="isAuthenticated()">
		<% response.sendRedirect("/"); %>
	</sec:authorize>

		<header>
			<div class="container">
				<div class="row justify-content-center align-items-center">
					<div class="col-2 logoForLogin mt-5 text-center">
						<a href="/" class="backlight"><img src="${contextPath}/resources/img/logo.png"></a>
						<div class="main-logo-text">Профиль<br>питания</div>
					</div>
				</div>
			</div>
		</header>

		<section class="container">
			<%--
			<div class="row justify-content-center align-items-center mt-5">

				<div class="col-2 text-center">
					<h2>Пациент</h2>
				</div>

			</div>
			<div class="row justify-content-center align-items-center mt-3">
				<div class="col-xl-2 col-lg-2 col-md-3 text-center">
					<a href="/loginDoc" class="backlight"><img src="${contextPath}/resources/img/logoDoctor.png"></a>
				</div>
				<div class="col-xl-2 col-lg-2 col-md-3 text-center">
					<a href="/login"><img src="${contextPath}/resources/img/logoPatient.png" ></a>
				</div>
			</div>
			--%>
				<div class="row justify-content-center align-items-center mt-3">

					<form method="post" action="/login" class="col">

						<div class="row justify-content-center align-items-center">
							<div class="lp-input col-xl-4 col-lg-5 col-md-6">
								<input id="username" type="email" name="username" placeholder="Введите логин" required>
							</div>
						</div>

						<div class="row justify-content-center align-items-center">
							<div class="lp-input col-xl-4 col-lg-5 col-md-6 mt-3">
								<input id="password" type="password" name="password" placeholder="Введите пароль" required>
							</div>
						</div>

						<div class="row justify-content-center align-items-center">
							<div class="col-xl-4 col-lg-5 col-md-6 mt-3">
								<input type="checkbox" id="checked-id">
								<label class="float-left" for="checked-id">Запомнить меня</label>
								<a class="float-right" href="/forgot">Забыли пароль?</a>
							</div>
						</div>



						<div class="row justify-content-center align-items-center">
							<div class="col-xl-4 col-lg-5 col-md-6 mt-3">
								<button id="button" class="in-submit" type="submit">Войти</button>
							</div>
						</div>

						<div class="row justify-content-center align-items-center">
							<div class="col-xl-4 col-lg-5 col-md-6 mt-3 text-center">
								<a href="/registration">Зарегистрироваться</a>
							</div>
						</div>

						<div class="row justify-content-center align-items-center">
							<div class="col-xl-4 col-lg-5 col-md-6 mt-3 text-center">
								<p id="error" class="text-center"></p>
							</div>
						</div>

					</form>
				</div>

		</section>

	</body>

</html>
