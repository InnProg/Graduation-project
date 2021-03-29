<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="UTF-8">
		<meta content="Буханцов Кирилл" name="author">
		<title>Восстановление пароля</title>
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
				<div class="col-4 text-center">
					<h2>Восстановление пароля</h2>
				</div>
			</div>
			<div class="row justify-content-center align-items-center mt-3">
				<div class="col-xl-2 col-lg-2 col-md-3 text-center">
					<a href="/login"><img src="${contextPath}/resources/img/forgotPassword.png"></a>
				</div>
			</div>

			<form class="row justify-content-center align-items-center mt-3" action="">
				<div class="col-xl-4 col-lg-5 col-md-6">
					<div class="lp-input">
						<input type="email" name="username" placeholder="Введите ваш E-mail">
					</div>
				</div>
			</form>

			<div class="row justify-content-center align-items-center mt-3">
				<div class="col-xl-4 col-lg-5 col-md-6">
					<button class="in-submit" type="submit">Отправить письмо на почту</button>
				</div>
			</div>

		</section>

	</body>

</html>
