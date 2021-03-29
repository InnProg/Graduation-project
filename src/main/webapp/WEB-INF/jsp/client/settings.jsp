<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="UTF-8">
		<meta content="Буханцов Кирилл" name="author">
		<title>Личный кабинет</title>
		<link rel="icon" href="resources/img/iconTitle.jpg" type="image/jpg">
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/main.css">
	</head>
	<body>

		<header>
			<div class="container">
				<!--div class row нужен для bootstrap-->
				<div class="row" style="background-color: #173542">
					<!--div class col-lg-2 это говорит о том, что логотип занимает 2 колоки сетки-->
					<div class="col-2 main-logo">
						<img src="resources/img/logo.png">
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

					<!--НАСТРОЙКИ ПРОФИЛЯ-->
					<div class="row mt-3">

						<!--ЛИЧНЫЕ ДАННЫЕ-->
						<div class="col">

							<h2 class="text-center font-weight-bold">Личные данные</h2>
							<form action="/personalDate" method="post">
								<div class="row mt-4">
									<div class="col align-self-center">
										<h3>Фамилия</h3>
									</div>
									<div class="col lp-input">
										<input type="text" name="lastName" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Имя</h3>
									</div>
									<div class="col lp-input">
										<input type="text" name="firstName" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Отчество</h3>
									</div>
									<div class="col lp-input">
										<input type="text" name="middleName" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Возраст</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="age" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Пол</h3>
									</div>
									<div class="col lp-input">
										<input type="text" name="gender" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Рост</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="height" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Вес</h3>
									</div>
									<div class="col lp-input">
										<input type="number" name="initialWeight" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Логин</h3>
									</div>
									<div class="col lp-input">
										<input type="text" name="login" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Пароль</h3>
									</div>
									<div class="col lp-input">
										<input type="text" name="password" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Цель коррекции питания</h3>
									</div>
									<div class="col lp-input">
										<input type="text" name="goal" style="height: 40px">
									</div>
								</div>

								<div class="row mt-2">
									<div class="col align-self-center">
										<h3>Уровень физической активности</h3>
									</div>
									<div class="col lp-input">
										<input type="number" step="0.01" name="lpa" style="height: 40px">
									</div>
								</div>

								<div class="row mt-4">
									<div class="col">
										<button type="submit" class="in-submit" name="saveDate" value="save">
											Сохранить
										</button>
									</div>
								</div>

								<div class="row mt-4">
									<div class="col">
										<button type="submit" class="in-submit" name="updateDate">
											Изменить
										</button>
									</div>
								</div>

							</form>
						</div>


						<!--НАСТРОЙКА БД-->
						<div class="col">
							<h2 class="text-center font-weight-bold">Настройка БД</h2>
							<div class="row mt-4">
								<div class="col align-self-center">
									<h3>Наименование</h3>
								</div>
								<div class="col lp-input">
									<input type="text" name="weight" style="height: 40px">
								</div>
							</div>

							<div class="row mt-2">
								<div class="col align-self-center">
									<h3>Вес</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="weight" style="height: 40px">
								</div>
							</div>

							<div class="row mt-2">
								<div class="col align-self-center">
									<h3>Ккал</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="weight" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">
								<div class="col align-self-center">
									<h3>Белки</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="date" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">
								<div class="col align-self-center">
									<h3>Жиры</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="date" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">
								<div class="col align-self-center">
									<h3>Углеводы</h3>
								</div>
								<div class="col lp-input">
									<input type="number" name="date" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">
								<div class="col">
									<button type="submit" class="in-submit" name="savePhys">
										Добавить
									</button>
								</div>
							</div>

						</div>



						<!--РЕЗУЛЬТАТ РАСЧЕТА-->
						<div class="col">

							<h2 class="text-center font-weight-bold">Продукты питания</h2>

							<input type="text" name="searchProduct" style="height: 40px" placeholder="Найти продукт">

							<div class="row mt-4">

								<table style="border: 2px solid white; max-height: 200px">

									<thead>
									<th>Группа</th>
									<th>Наименование</th>
									<th>Вес</th>
									<th>Ккал</th>
									<th>Б</th>
									<th>Ж</th>
									<th>У</th>
									</thead>

									<tbody>
									<tr>
										<td>Молочные продукты</td>
										<td width="200">Молоко</td>
										<td width="81">100</td>
										<td width="81">51</td>
										<td width="81">4,1</td>
										<td width="81">2,5</td>
										<td width="81">15</td>
									</tr>

									<tr>
										<td>Молочные продукты</td>
										<td width="200">Молоко</td>
										<td width="81">100</td>
										<td width="81">51</td>
										<td width="81">4,1</td>
										<td width="81">2,5</td>
										<td width="81">15</td>
									</tr>
									<tr>
										<td>Молочные продукты</td>
										<td width="200">Молоко</td>
										<td width="81">100</td>
										<td width="81">51</td>
										<td width="81">4,1</td>
										<td width="81">2,5</td>
										<td width="81">15</td>
									</tr>

									<tr>
										<td>Молочные продукты</td>
										<td width="200">Молоко</td>
										<td width="81">100</td>
										<td width="81">51</td>
										<td width="81">4,1</td>
										<td width="81">2,5</td>
										<td width="81">15</td>
									</tr>

									<tr>
										<td>Молочные продукты</td>
										<td width="200">Молоко</td>
										<td width="81">100</td>
										<td width="81">51</td>
										<td width="81">4,1</td>
										<td width="81">2,5</td>
										<td width="81">15</td>
									</tr>


									</tbody>

								</table>

							</div>

							<div class="row mt-4">
								<div class="col">
									<button type="submit" class="in-submit" name="savePhys">
										Изменить
									</button>
								</div>
							</div>

							<div class="row mt-4">
								<div class="col">
									<button type="submit" class="in-submit" name="savePhys">
										Удалить
									</button>
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
