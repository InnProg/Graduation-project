<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
	<head>
		<meta charset="UTF-8">
		<meta content="Буханцов Кирилл" name="author">
		<meta content="Профиль питания, консультация врача, расчет энергетической ценности, план питания" name="keywords">
		<meta content="Профиль питания – это веб-приложение для врачей и пациентов. Программа позволяет рассчитывать сут. потребность БЖУ, ккал, составлять план и вести дневник питания, консультироваться с врачом и др." name="description">
		<title>Профиль питания</title>
		<link rel="icon" href="${contextPath}/resources/img/iconTitle.jpg" type="image/jpg">
		<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css">
		<link rel="stylesheet" href="${contextPath}/resources/css/main.css">
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script> <!--Подключаем библиотеку JQuery для полавного перехода по ссылкам, используя якоря-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> <!--Подключаем библиотеку JQuery для кнопки вверх-->
	</head>
	<body>
		<div id = "toTop"></div > <!--ВОПРОС-->
		<script type="text/javascript">
		$(document).ready(function(){
			$("#smooth-transition").on("click","a", function (event) {
				event.preventDefault();
				var id  = $(this).attr('href'),
				top = $(id).offset().top;
				$('body,html').animate({scrollTop: top}, 1500);
			});
		});
		</script>
	
		<script type="text/javascript">
			$(function() {
				$(window).scroll(function() {
					if($(this).scrollTop() != 0) {
					$('#toTop').fadeIn();
					} else {
						$('#toTop').fadeOut(); 
					}
				});
				$('#toTop').click(function() {
					$('body,html').animate({scrollTop:0},800);
				});
			});
		</script>


		<header>
			<div class="container">
				<!--div class row нужен для bootstrap-->
				<div class="row">
					<!--div class col-lg-2 это говорит о том, что логотип занимает 2 колоки сетки-->
					<div class="col-2 main-logo">
						<img src="${contextPath}/resources/img/logo.png">
						<div class="main-logo-text">Профиль<br>питания</div>
					</div>
					<div class="col-9 align-self-center">
						<nav>
							<ul id="smooth-transition" class="d-flex">
								<li class="menu__item"><a href="#sec1">Главная</a></li>
								<li class="menu__item"><a href="#sec4">О проекте</a></li>
								<li class="menu__item"><a href="#sec5">Контакты</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-1 align-self-center">
						<nav>
							<ul>
								<li class="menu__item"><a href="${path}">${pageContext.request.userPrincipal.name}</a></li>

								<sec:authorize access="!isAuthenticated()">
								<li class="menu__item"><a href="/login">Вход</a></li>
								</sec:authorize>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
		
		
		<section id="sec1" class="container section-page">
			<div class="row">
				<div class="col">
					<h1 class="text-center">Профиль питания</h1>
					<p>Это информационная система для врача-диетолога и пациентов. На основе введенных данных пациента и
						результатов опроса по частоте приема  продуктов питания, информационная система может составить план рационального
						(сбалансированного) питания, составить отчет по заниженным или завышенным потреблениям нутриентов, рассчитать индекс
						массы тела (ИМТ) и многое другое, а врач, в свою очередь, может следить за полученными результатами пациента,
						корректировать рацион питания и консультировать при необходимости.
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-3 offset-2 off my-5">
					<img src="${contextPath}/resources/img/food.png">
				</div>
				<div class="col-xl-7 align-self-center">
					<p>- Информационная система использует нормы и правила
						рационального (сбалансированного) питания</p>
				</div>
			</div>>
		</section>
		

		<section class="container section-page">
			<div class="row h-100 justify-content-center align-items-center">
				<div class="col-xl-6">
					<img src="${contextPath}/resources/img/analysis.png">
				</div>
				<div class="col-xl-6 align-self-center">
					<p>-Результатом работы программы является
						отчет в виде графиков</p>
				</div>
			</div>
		</section>
		
		
		<section class="container section-page">
			<div class="row h-100 justify-content-center align-items-center">
				<div class="col-xl-6">
					<img src="${contextPath}/resources/img/analysis3.png">
				</div>
				<div class="col-xl-6 align-self-center">
					<p>- Или более подрнобный отчет</p>
				</div>
			</div>
		</section>


		<section id="sec4" class="section-page container">
			<div class="row">
				<div class="col">
					<h1 class="text-center">Личный кабинет пациента</h1>
					<p class="mt-5">1) Анкеты, где пользователю необходимо ответить на вопросы, которые связаны
						с частотой приема того или иного продукта.  Ответы должны анализироваться
						с помощью специального метода и других таблиц с информацией<br>
						2) Расчет индекса массы тела (ИМТ)<br>
						3) Расчет суточной нормы БЖУ<br>
						4) Расчет суточной нормы килокалорий<br>
						5) Готовые шаблоны рационального питания<br>
						6) Дневник питания<br>
						7) Чат между пациентом и врачом<br>
						8) Статус пациента (онлайн или не онлайн)
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<h1 class="text-center">Личный кабинет врача</h1>
					<p class="mt-5">
						1) Врач может редактировать или формировать план питания для пациента<br>
						2) Есть возможность работать с группой пациентов, так как к каждому определенному
						врачу закреплено определенное количество пациентов<br>
						3) возможность просматривать дневник питания пациента, оставлять комментарии, если, например,
						необходимо указать на ошибки в рационе<br>
						4) Просматривать статистику активности пациента (когда были онлайн, что добавляли,
						рассчитывали и т.д.)<br>
						5) Возможность консультировать пациента, использовать чат
					</p>
				</div>
			</div>
		</section>


		<footer id="sec5" class="container">
			<div class="row">

				<div class="col-2 mt-3 offset-2">
					<h2>Карта сайта</h2>
					<nav>
						<ul>
							<li class="site_map"><a href="#sec1">Главная</a></li>
							<li class="site_map"><a href="#sec4">О проекте</a></li>
							<li class="site_map"><a href="/login">Личный кабинет</a></li>
						</ul>
					</nav>
				</div>


				<div class="col-3 align-content-end mt-3">
					<h2>Контакты</h2>
					<p>Почта: Mail@mail.ru</p>
					<p>Телефон: +78001110023</p>
				</div>

			</div>
		</footer>













	</body>

</html>
