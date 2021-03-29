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

					<!--ПЛАН ПИТАНИЯ-->
					<div class="row mt-3">

						<!--ТАБЛИЦА ПРОДУКТОВ-->
						<div class="col-8">

							<h2 class="text-center font-weight-bold">План питания</h2>

							<div class="row mt-4">
								<div class="col align-self-center text-right">
									<h3>Дата плана: </h3>
								</div>
								<div class="col">
									<input type="date" name="dateDiary" style="height: 40px">
								</div>
							</div>

							<div class="row mt-4">

								<nav>
									<ul class="main-menu">
										<li class="li-menu"><a href="">Завтрак</a></li>
										<li class="li-menu"><a href="">Перекус 1</a></li>
										<li class="li-menu"><a href="">Обед</a></li>
										<li class="li-menu"><a href="">Перекус 2</a></li>
										<li class="li-menu"><a href="">Ужин</a></li>
										<li class="li-menu"><a href="">Перекус 3</a></li>
									</ul>
								</nav>
							</div>

							<div class="row mt-4">

								<table>

									<thead>
										<th>Наименование</th>
										<th>Вес</th>
										<th>Ккал</th>
										<th>Белки</th>
										<th>Жиры</th>
										<th>Углеводы</th>
										<th></th>
									</thead>

									<tbody>
										<tr>
											<td width="200">Молоко</td>
											<td width="81">100</td>
											<td width="81">51</td>
											<td width="81">4,1</td>
											<td width="81">2,5</td>
											<td width="81">15</td>
											<td width="28"><img src="resources\img\delete2.png"></td>
										</tr>
									</tbody>

								</table>

							</div>


						</div>


						<!--ВЫБОР ПРОДУКТА ИЗ БД-->
						<div class="col-4">

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

								<h2 class="font-weight-bold text-center">Результат</h2>

								<table>

									<thead>
									<th width="102">Нутриенты</th>
									<th width="102">Необходимо</th>
									<th width="102">Набрано</th>
									</thead>

									<tbody>

										<tr>
											<td>Ккал</td>
											<td>Число</td> <!--Необходимо-->
											<td>Число</td> <!--Набрано-->
										</tr>

										<tr>
											<td>Белки</td>
											<td>Число</td> <!--Необходимо-->
											<td>Число</td> <!--Набрано-->
										</tr>

										<tr>
											<td>Жиры</td>
											<td>Число</td> <!--Необходимо-->
											<td>Число</td> <!--Набрано-->
										</tr>

										<tr>
											<td>Углеводы</td>
											<td>Число</td> <!--Необходимо-->
											<td>Число</td> <!--Набрано-->
										</tr>

									</tbody>

								</table>

							</div>


						</div>


					</div>


				</main>


			</div>

		</section>


	</body>

</html>
