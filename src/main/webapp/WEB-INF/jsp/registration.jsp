<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="UTF-8">
		<meta content="Буханцов Кирилл" name="author">
		<title>Регистрация</title>
		<link rel="icon" href="${contextPath}/resources/img/iconTitle.jpg" type="image/jpg">
		<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" href="${contextPath}/resources/css/main.css">
	</head>
	<body>
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
			<div class="row justify-content-center align-items-center mt-5">
				<div class="col-2 text-center">
					<h2>Регистрация</h2>
				</div>
			</div>
			<div class="row justify-content-center align-items-center mt-3">
				<div class="col-xl-2 col-lg-2 col-md-3 text-center">
					<a href="/login"><img src="${contextPath}/resources/img/logoPatient.png" ></a>
				</div>
			</div>

			<form action="registration" method="post" class="row justify-content-center" style="height: 600px " modelAttribute="userForm">
				<div class="col-xl-4 col-lg-5 col-md-6 mt-3">

					<%--
					<div class="lp-input mt-3">
						<input type="text" name="lastName" placeholder="Фамилия" required>
					</div>

					<div class="lp-input mt-3">
						<input type="text" name="firstName" placeholder="Имя" required>
					</div>

					<div class="lp-input mt-3">
						<input type="text" name="middleName" placeholder="Отчество" required>
					</div>
					--%>
					<div class="lp-input mt-3">
						<input type="email" name="username" path="username" placeholder="Введите логин (email)" required>
					</div>

					<div class="lp-input mt-3">
						<input type="password" name="password" path="password" placeholder="Введите пароль" required>
					</div>


					<div class="lp-input mt-3">
						<input type="password" name="passwordConfirm" path="passwordConfirm" placeholder="Повторите пароль" required>
					</div>

					<sec:authorize access="!isAuthenticated()">
					<button class="in-submit mt-3" type="submit">Зарегистрироваться</button>
					</sec:authorize>

						<p class="text-center">${usernameError}</p>
						<p class="text-center">${passwordError}</p>

				</div>
			</form>

		</section>
		
	</body>

</html>
