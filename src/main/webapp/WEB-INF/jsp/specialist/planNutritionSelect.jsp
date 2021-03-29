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
						<a href="D:/Projects/Site/Profile Nutrition/ver 1.2/index.html" ><img src="resources/img/big-lg.png"></a>
					</div>
					<div class="col-xl-8 offset-2">
						<p class="text-center">Профиль</p>
					</div>
					<nav class="col mt-5">
						<ul class="main-menu">
							<li class="mb-3"><img src="resources/img/iconTests.png"><a href="D:/Projects/Site/Profile Nutrition/ver 1.2/client.html">Клиент</a></li>
							<li class="mb-3"><img src="resources/img/iconPersonalDate.png"><a href="D:/Projects/Site/Profile Nutrition/ver 1.2/foodDiaryClient.html">Дневник питания</a></li>
							<li class="mb-3"><img src="resources/img/iconNutritionPlan.ico.png"><a href="">План питания</a>
								<ul class="ml-4">
									<li><a href="D:\Projects\Site\Profile Nutrition\ver 1.2\planNutritionCreate.html">создать</a></li>
									<li><a href="D:\Projects\Site\Profile Nutrition\ver 1.2\planNutritionSelect.html">выбрать</a></li>
								</ul>

							</li>

							<li class="mb-3"><img src="resources/img/iconResult.png"><a href="">Результаты</a></li>
							<li class="mb-3"><img src="resources/img/iconSettings.png"><a href="D:\Projects\Site\Profile Nutrition\ver 1.2\settings.html">Настройки</a></li>
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
								<div class="col-4 align-self-center text-right">
									<h3>План питания: </h3>
								</div>
								<div class="col-4">
									<input type="number" name="numPlan" style="height: 40px" placeholder="Номер плана">
								</div>
							</div>

							<!--
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
							-->

							<div class="row mt-4">

								<table>

									<thead>
										<th>Прием пищи</th>
										<th width="200">Наименование</th>
										<th width="50">Вес</th>
										<th width="50">Ккал</th>
										<th width="50">Б</th>
										<th width="50">Ж</th>
										<th width="50">У</th>
									</thead>

									<tbody>

										<tr>
											<td>Завтрак</td>
											<tr>
												<td></td>
												<td>Молоко</td>
												<td>100</td>
												<td>51</td>
												<td>4,1</td>
												<td>2,5</td>
												<td>15</td>
											</tr>
										</tr>

										<tr>
											<td>Перекус 1</td>
											<tr>
												<td></td>
												<td>Молоко</td>
												<td>100</td>
												<td>51</td>
												<td>4,1</td>
												<td>2,5</td>
												<td>15</td>
											</tr>
										</tr>

										<tr>
											<td>Обед</td>
											<tr>
												<td></td>
												<td>Молоко</td>
												<td>100</td>
												<td>51</td>
												<td>4,1</td>
												<td>2,5</td>
												<td>15</td>
											</tr>
										</tr>


										<tr>
											<td>Перекус 2</td>
											<tr>
												<td></td>
												<td>Молоко</td>
												<td>100</td>
												<td>51</td>
												<td>4,1</td>
												<td>2,5</td>
												<td>15</td>
											</tr>
										</tr>

										<tr>
											<td>Ужин</td>
											<tr>
												<td></td>
												<td>Молоко</td>
												<td>100</td>
												<td>51</td>
												<td>4,1</td>
												<td>2,5</td>
												<td>15</td>
											</tr>
										</tr>

										<tr>
											<td>Перекус 3</td>
											<tr>
												<td></td>
												<td>Молоко</td>
												<td>100</td>
												<td>51</td>
												<td>4,1</td>
												<td>2,5</td>
												<td>15</td>
											</tr>
										</tr>

									</tbody>


								</table>


							</div>


						</div>


						<!--РЕЗУЛЬТАТ-->
						<div class="col-4">


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

							<div class="row mt-4">
								<table>
									<tr>
										<td width="100">Составил</td>
										<td>ФИО</td>
									</tr>

									<tr>
										<td width="100">Дата</td>
										<td>Текст</td>
									</tr>
								</table>


							</div>

							<div class="col text-center mt-4">
								<h3 style="font-weight: bold">Рекомендации</h3>
							</div>


							<div class="col-12">
								<input type="text" name="recom" style="height: 100px">
							</div>

							<div class="col mt-4">
								<button type="submit" class="in-submit" name="saveAntrop">
									Сохранить рекомендацию
								</button>
							</div>


						</div>


					</div>


				</main>


			</div>

		</section>


	</body>

</html>
