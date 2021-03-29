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

					<div class="row mt-3">

						<!--СПИСОК КЛИЕНТОВ-->
						<div class="col-6">

							<h2 class="text-center font-weight-bold">Список клиентов</h2>


							<table>

								<thead>
								<th width="120">Клиент</th>
								<th width="120">Специалист</th>
								<th width="120">Должность</th>
								<th></th>
								</thead>

								<tbody>
								<tr>
									<td>Тарасов К.Л.</td>
									<td>Вовкина Р.В.</td>
									<td>врач-диетолог</td>
									<td>выбрать</td>
								</tr>
								</tbody>

							</table>


						</div>

						<!--ФИЗИОЛОГИЧЕСКИЕ ПОКАЗАТЕЛИ-->
						<div class="col-3">
							<h2 class="text-center font-weight-bold">Данные клиента</h2>
							<div class="row mt-2">
								<div class="col">
									<h3>Фамилия</h3>
								</div>
								<div class="col text-center">
									<output name="precentActual" style="height: 40px">Тарасов</output>
								</div>
							</div>

							<div class="row">
								<div class="col">
									<h3>Имя</h3>
								</div>
								<div class="col text-center">
									<output name="precentActual" style="height: 40px">Константин</output>
								</div>
							</div>

							<div class="row">
								<div class="col">
									<h3>Отчество</h3>
								</div>
								<div class="col text-center">
									<output name="precentActual" style="height: 40px">Львович</output>
								</div>
							</div>

							<div class="row">
								<div class="col">
									<h3>Рост</h3>
								</div>
								<div class="col text-center">
									<output name="precentActual" style="height: 40px">185</output>
								</div>
							</div>

							<div class="row">
								<div class="col">
									<h3>Вес</h3>
								</div>
								<div class="col text-center">
									<output name="precentActual" style="height: 40px">72</output>
								</div>
							</div>

						</div>



						<!--РЕЗУЛЬТАТ РАСЧЕТА-->
						<div class="col-3">
							<h2 class="text-center font-weight-bold">Результат</h2>
							<div class="row mt-4">
								<div class="col">
									<h3>Процент жира фактический</h3>
								</div>
								<div class="col text-center">
									<output name="precentActual" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Процент жира оптимальный</h3>
								</div>
								<div class="col text-center">
									<output name="precentOptimal" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Индекс массы тела</h3>
								</div>
								<div class="col text-center">
									<output name="bmi" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Индекс талия/бедра</h3>
								</div>
								<div class="col text-center">
									<output name="index" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Масса тела по Брейтману</h3>
								</div>
								<div class="col text-center">
									<output name="weightBret" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Масса тела по Броку</h3>
								</div>
								<div class="col text-center">
									<output name="weightBrok" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Масса тела по Борнгардту</h3>
								</div>
								<div class="col text-center">
									<output name="weightBorn" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Максимальная масса тела</h3>
								</div>
								<div class="col text-center">
									<output name="maxWeight" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Минимальная масса тела</h3>
								</div>
								<div class="col text-center">
									<output name="minWeight" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Основной обмен</h3>
								</div>
								<div class="col text-center">
									<output name="coreNutrition" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Суточные энергозатраты</h3>
								</div>
								<div class="col text-center">
									<output name="dailyEnergy" style="height: 40px">Число</output>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col">
									<h3>Тип телосложения</h3>
								</div>
								<div class="col text-center align-self-center">
									<output name="bodyType" style="height: 40px">Текст</output>
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
