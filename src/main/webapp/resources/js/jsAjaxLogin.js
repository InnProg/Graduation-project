//Объект document позволяет работать с html документом



function identification() {

    var login = document.getElementById("login").value; // Считываем значение
    var password = document.getElementById("password").value; // Считываем значение

    var body = "loginAjax=" + encodeURIComponent(login) + "&passwordAjax=" + encodeURIComponent(password);

    var xmlHttp = new XMLHttpRequest(); // Создаём объект

    xmlHttp.open("POST", "http://localhost:8080/ProfileNutrition2_war_exploded/login", true); // Открываем асинхронное соединение
    xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); // Отправляем кодировку

    xmlHttp.onreadystatechange = callback;

    xmlHttp.send(body); // Отправляем POST-запрос


    function callback() { // Ждём ответа от сервера
        if (xmlHttp.readyState == 4) { // Ответ пришёл
            if(xmlHttp.status == 200) { // Сервер вернул код 200 (что хорошо)
                if(xmlHttp.responseText=="true"){
                    window.location.href = "http://localhost:8080/ProfileNutrition2_war_exploded/patient";
                }
                else {
                    document.getElementById("error").innerHTML = "Введен не верный логин или пароль!";
                }
            }

            }
        }
    }


//window.location.href = "http://localhost:8080/ProfileNutrition_war_exploded/patient";
//alert(xmlHttp.responseText);