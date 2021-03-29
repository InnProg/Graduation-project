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

					<!--ВВОД ПОКАЗАТЕЛЕЙ-->
					<div class="row mt-3">

						<!--АНТРОПОМЕТРИЯ-->
						<div class="col">
							<h2 class="text-center font-weight-bold">Антропометрия</h2>
							<form action="/anthropometry" method="post">

								<div class="row mt-4">
									<div class="col align-self-center">
										<h3>Вес</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="weight" style="height: 40px" required>
									</div>
								</div>

								<h2 class="text-center mt-4">Обмеры</h2>
								<div class="row mt-4">
									<div class="col align-self-center">
										<h3>Окружность грудной клетки</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="chestCircum" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Окружность талии</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="waistCircum" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Окружность бёдер</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="hipsCircum" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Окружность запястья</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="wristCircum" style="height: 40px" required>
									</div>
								</div>

								<h2 class="text-center mt-4">Жировые складки</h2>
								<div class="row mt-4">
									<div class="col align-self-center">
										<h3>Первая</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="firstFold" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Вторая</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="secondFold" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Третья</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="thirdFold" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Четвёртая</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="fourthFold" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-4">
									<div class="col align-self-center">
										<h3>Дата</h3>
									</div>
									<div class="col lp-input">
										<input type="date" name="date" style="height: 40px" required>
									</div>
								</div>

								<div class="row mt-4">
									<div class="col">
										<button type="submit" class="in-submit" name="action" value="save">Сохранить</button>
									</div>
								</div>
							</form>

						</div>

						<!--ФИЗИОЛОГИЧЕСКИЕ ПОКАЗАТЕЛИ-->
						<div class="col">
							<h2 class="text-center font-weight-bold">Физиологические показатели</h2>
							<div class="row mt-4">
								<div class="col align-self-center">
									<h3>Систолическое давление</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="weight" style="height: 40px">
								</div>
							</div>

							<div class="row mt-2">
								<div class="col align-self-center">
									<h3>Диастолическое давление</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="weight" style="height: 40px">
								</div>
							</div>

							<div class="row mt-2">
								<div class="col align-self-center">
									<h3>ЧСС</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="weight" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">
								<div class="col align-self-center">
									<h3>Дата</h3>
								</div>
								<div class="col lp-input">
									<input type="date" name="date" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">
								<div class="col">
									<button type="submit" class="in-submit" name="action" value="save">Сохранить</button>
								</div>
							</div>

						</div>



						<!--РЕЗУЛЬТАТ РАСЧЕТА-->
						<div class="col">

								<h2 class="text-center font-weight-bold">Результат расчета</h2>
								<div class="row mt-4">
									<div class="col">
										<h3>Процент жира фактический</h3>
									</div>
									<div class="col text-center">
										<output name="precentActual" style="height: 40px">
											<c:out value="${results.actualFatPercent}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Процент жира оптимальный</h3>
									</div>
									<div class="col text-center">
										<output name="precentOptimal" style="height: 40px">
											<c:out value="${results.optimalFatPercent}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Индекс массы тела</h3>
									</div>
									<div class="col text-center">
										<output name="bmi" style="height: 40px">
											<c:out value="${results.bmi}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Индекс талия/бедра</h3>
									</div>
									<div class="col text-center">
										<output name="index" style="height: 40px">
											<c:out value="${results.waistHipIndex}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Масса тела по Брейтману</h3>
									</div>
									<div class="col text-center">
										<output name="weightBret" style="height: 40px">
											<c:out value="${results.weightBreitman}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Масса тела по Броку</h3>
									</div>
									<div class="col text-center">
										<output name="weightBrok" style="height: 40px">
											<c:out value="${results.weightBroca}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Масса тела по Борнгардту</h3>
									</div>
									<div class="col text-center">
										<output name="weightBorn" style="height: 40px">
											<c:out value="${results.weightBorngardt}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Максимальная масса тела</h3>
									</div>
									<div class="col text-center">
										<output name="maxWeight" style="height: 40px">
											<c:out value="${results.weightMax}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Минимальная масса тела</h3>
									</div>
									<div class="col text-center">
										<output name="minWeight" style="height: 40px">
											<c:out value="${results.weightMin}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Основной обмен</h3>
									</div>
									<div class="col text-center">
										<output name="coreNutrition" style="height: 40px">
											<c:out value="${results.coreExchange}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Суточные энергозатраты</h3>
									</div>
									<div class="col text-center">
										<output name="dailyEnergy" style="height: 40px">
											<c:out value="${results.dailyEnergy}" default="" />
										</output>
									</div>
								</div>

								<div class="row mt-2">
									<div class="col">
										<h3>Тип телосложения</h3>
									</div>
									<div class="col text-center align-self-center">
										<output name="bodyType" style="height: 40px">
											<c:out value="${results.bodyType}" default="" />
										</output>
									</div>
								</div>

						</div>

					</div>

					<!--СОХРАНЕНИЕ РЕЗУЛЬТАТА-->
					<!--div class="row mt-3">

						<div class="col-4">
							<div class="row mt-4">
								<div class="col align-self-center">
									<h3>Дата</h3>
								</div>
								<div class="col lp-input">
									<input type="date" name="date" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">
								<div class="col">
									<button type="submit" class="in-submit" name="saveIndicators">
										Сохранить
									</button>
								</div>
							</div>

						</div>



					-->


				</main>


			</div>

		</section>


	</body>

</html>
