package com.nutrition.methods;


public final class Calories {

    /*Расчет основного обмена*/
    public int calculationCoreExchange(String gender, float weight, float growth, int age){
        float i = 0;

        if(gender.equals("муж") || gender.equals("м") || gender.equals("мужчина")){
            i = 66.4730F+(13.7516F*weight)+(5.003F*growth)-(6.7550F*age);
        }
        else if(gender.equals("жен") || gender.equals("ж") || gender.equals("женщина")){
            i = 655.0955F+(9.5634F*weight)+(1.8496F*growth)-(4.6756F*age);
        }
        int coreExchange = (int) i;

        return coreExchange;
    }

    /*Расчет суточных энергозатрат*/
    public int calculationDailyEnergy(String gender, float weight, float growth, int age, float PAC){
        int coreExchange = calculationCoreExchange(gender,weight,growth,age);
        int dailyEnergy = (int) (coreExchange*PAC);
        return dailyEnergy;
    }

}
