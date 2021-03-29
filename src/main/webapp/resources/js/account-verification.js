//$(document).ready(function () {}) - стандартная функция, которая выполняет скрипты, когда документ будет полностью загружен
$(document).click(function () {
    $("#button").submit(function () {
        var login = $('#login').val();
        var password = $('#password').val();
       $.ajax({
           type: "POST",    //Метод обработки запроса
           url: "LoginServlet",    //Куда отправляются собранные данные
           data: {login: login, password: password},
           dataType: "json",
           success: function(serverData){   //Если запрос удачен
               $("#info").css({"background-color":serverData.backgroundColor, "height": "50px", "color":"white"});
               $("#info").html(serverData.serverInfo);
           },
           error: function(e)   //Если запрос не удачен
           {
               $("#info").css({"background-color":"#CC6666", "height": "50px", "color":"white"});
               $("#info").html("Запрос не удался!");
           }
       });
    });
});