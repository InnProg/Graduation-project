//Объект document позволяет работать с html документом



function getListPatient() {

    var xmlHttp = new XMLHttpRequest(); // Создаём объект

    xmlHttp.open("GET", "http://localhost:8080/ProfileNutrition2_war_exploded/doctor?list=all", true); // Открываем асинхронное соединение
    xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); // Отправляем кодировку

    xmlHttp.onreadystatechange = callback;

    xmlHttp.send(); // Отправляем GET-запрос


    function callback() { // Ждём ответа от сервера
        if (xmlHttp.readyState == 4) { // Ответ пришёл
            if (xmlHttp.status == 200) { // Сервер вернул код 200 (что хорошо)

                //СТРОКА СО ПИСКОМ ПАЦИЕНТОВ
                document.getElementById("listPatient").innerHTML = xmlHttp.responseText;
            }
        }
    }
}