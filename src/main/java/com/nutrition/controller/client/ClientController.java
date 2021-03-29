package com.nutrition.controller.client;


import com.nutrition.entity.client.Client;
import com.nutrition.entity.client.indicators.Anthropometry;
import com.nutrition.entity.client.indicators.Result;
import com.nutrition.methods.AnthropMethods;
import com.nutrition.methods.BMI;
import com.nutrition.methods.Calories;
import com.nutrition.service.ClientService;
import com.nutrition.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collections;

@Controller
public class ClientController {

    @Autowired
    ClientService clientService;

    @Autowired
    UserService userService;

    @Autowired
    HttpSession session;

    //Создаем сессию. Создаем объект Клиента и присваиваем ему зарегистрированного клиента.
    // Далее в сессию дабавляем атрибут (ключ) к данному объекту.
    @GetMapping("/client")
    public String getAccount(HttpServletRequest request) {
        session = request.getSession();
        Client client = clientService.findByName(request.getUserPrincipal().getName());
        session.setAttribute("client", client);
        return "/client/client";
    }


    //Здесть указывается ссылка на страницу и что он должен вернуть
    @GetMapping("/settings")
    public String getSettings() {
        return "/client/settings";
    }

    @GetMapping("/indicators")
    public String getIndicators() {
        return "/client/indicators";
    }

    @GetMapping("/foodDiary")
    public String getFoodDiary() {
        return "/client/foodDiary";
    }

    @GetMapping("/planNutritionCreate")
    public String getPlanNutritionCreate() {
        return "/client/planNutritionCreate";
    }

    @GetMapping("/planNutritionSelect")
    public String getPlanNutritionSelect() {
        return "/client/planNutritionSelect";
    }






    //Вторичная регистрация
    @PostMapping("/personalDate")
    public String personalDate (@RequestParam(required = true, defaultValue = "" ) String lastName,
                                @RequestParam(required = true, defaultValue = "" ) String firstName,
                                @RequestParam(required = true, defaultValue = "" ) String middleName,
                                @RequestParam(required = true, defaultValue = "" ) int age,
                                @RequestParam(required = true, defaultValue = "" ) String gender,
                                @RequestParam(required = true, defaultValue = "" ) float height,
                                @RequestParam(required = true, defaultValue = "" ) float initialWeight,
                                @RequestParam(required = true, defaultValue = "" ) String login,
                                @RequestParam(required = true, defaultValue = "" ) String password,
                                @RequestParam(required = true, defaultValue = "" ) String goal,
                                @RequestParam(required = true, defaultValue = "" ) float lpa,
                                @RequestParam(required = true, defaultValue = "" ) String saveDate){



        if (saveDate.equals("save")){


            Client client = (Client) session.getAttribute("client");

            client.setLastName(lastName);
            client.setFirstName(firstName);
            client.setMiddleName(middleName);
            client.setAge(age);
            client.setGender(gender);
            client.setHeight(height);
            client.setInitialWeight(initialWeight);
            client.setGoalNutrition(goal);
            client.setLpa(lpa);

            clientService.saveClient(client);
        }

        return "/client/client";

    }


    //Здесть указывается ссылка на форму страницы settings.jsp
    @PostMapping("/anthropometry")
    public String saveSettings(@RequestParam(required = true, defaultValue = "" ) float weight,         //вес
                               @RequestParam(required = true, defaultValue = "" ) float chestCircum,    //окружность грудной клетки
                               @RequestParam(required = true, defaultValue = "" ) float waistCircum,    //окружность талии
                               @RequestParam(required = true, defaultValue = "" ) float hipsCircum,     //окружность бёдер
                               @RequestParam(required = true, defaultValue = "" ) float wristCircum,    //окружность запястья
                               @RequestParam(required = true, defaultValue = "" ) float firstFold,      //первая жировая складка
                               @RequestParam(required = true, defaultValue = "" ) float secondFold,     //вторая жировая складка
                               @RequestParam(required = true, defaultValue = "" ) float thirdFold,      //третья жировая складка
                               @RequestParam(required = true, defaultValue = "" ) float fourthFold,     //четвертая жировая складка
                               @RequestParam(required = true, defaultValue = "" ) String date,          //дата заполнения
                                @RequestParam(required = true, defaultValue = "" ) String action){
        //Если кнопка была нажата, то выполняются действия
        if (action.equals("save")){


            Client client = (Client) session.getAttribute("client");
            Anthropometry anthropometry = new Anthropometry();

            //передаем полученные данные с формы в объект Клиент
            anthropometry.setWeight(weight);
            anthropometry.setChestCircum(chestCircum);
            anthropometry.setWaistCircum(waistCircum);
            anthropometry.setHipsCircum(hipsCircum);
            anthropometry.setWristCircum(wristCircum);
            anthropometry.setFirstFatFold(firstFold);
            anthropometry.setSecondFatFold(secondFold);
            anthropometry.setThirdFatFold(thirdFold);
            anthropometry.setFourthFatFold(fourthFold);
            anthropometry.setDate(date);

            //Сохраняем данные
            clientService.saveAnthropmetry(anthropometry);
            //Присваиваем клмента
            anthropometry.setClient(client);
            //Сохраняем параметры вместе с клиентом
            clientService.saveAnthropmetry(anthropometry);

            //передаём объект Антропометрии в объект Клиента
            client.setAnthropometries(Collections.singleton(anthropometry));

            //используем методы и передаем в объект результат
            Result result = new Result();

            //Методы
            AnthropMethods anthropMethods = new AnthropMethods();
            Calories calories = new Calories();
            BMI bmi = new BMI();


            result.setActualFatPercent(anthropMethods.calcBodyFatMass(client.getGender(),client.getAge(),firstFold,secondFold,thirdFold,fourthFold));
            result.setOptimalFatPercent(anthropMethods.optimalProcentFat(client.getGender()));
            result.setBmi(bmi.calculate(weight, client.getHeight()));
            result.setWaistHipIndex(anthropMethods.calcIndexWaistHip(waistCircum,hipsCircum));
            result.setWeightBreitman(anthropMethods.calcIndexBreitman(client.getHeight()));
            result.setWeightBroca(anthropMethods.calcIndexBrock(client.getHeight()));
            result.setWeightBorngardt(anthropMethods.calcIndexBorngardt(client.getHeight(), chestCircum));
            result.setWeightMax(bmi.maxWeight(client.getHeight()));
            result.setWeightMin(bmi.minWeight(client.getHeight()));
            result.setCoreExchange(calories.calculationCoreExchange(client.getGender(), weight, client.getHeight(),client.getAge()));
            result.setDailyEnergy(calories.calculationDailyEnergy(client.getGender(),weight,client.getHeight(),client.getAge(),client.getLpa()));
            result.setBodyType(anthropMethods.typeBody(wristCircum,client.getGender()));
            result.setDate(date);

            clientService.saveResult(result);
            result.setClient(client);
            clientService.saveResult(result);

            client.setResults(Collections.singleton(result));
            clientService.saveClient(client);

            session.setAttribute("results", result);


        }


        return "redirect:/indicators";
    }











}

/*

<div class="lp-input mt-3">
									<input type="text" name="lastName" placeholder="Фамилия" required>
								</div>

								<div class="lp-input mt-3">
									<input type="text" name="firstName" placeholder="Имя" required>
								</div>

								<div class="lp-input mt-3">
									<input type="text" name="middleName" placeholder="Отчество" required>
								</div>

								<div class="lp-input mt-3">
									<input type="text" name="age" placeholder="Возраст" required>
								</div>

								<div class="lp-input mt-3">
									<input type="text" name="gender" placeholder="Пол" required>
								</div>

								<div class="lp-input mt-3">
									<input type="text" name="height" placeholder="Рост(см)" required>
								</div>

								<div class="lp-input mt-3">
									<input type="text" name="weight" placeholder="Вес(кг)" required>
								</div>
 */