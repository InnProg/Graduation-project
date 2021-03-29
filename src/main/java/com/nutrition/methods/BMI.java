package com.nutrition.methods;

public final class BMI {

    /*ИМТ*/
    public float calculate(float weight, float growth){
        float bmi = (weight / ((growth*growth)/10000.0F));
        return Math.round(bmi*100.0F)/100.0F;
    }

    /*Расшифровка ИМТ*/
    public String conclusion(float bmi){

        if(bmi<=16){
            return "Выраженный дефицит массы тела";
        }
        if(bmi>16 && bmi<=18.5){
            return "Недостаточная (дефицит) масса тела";
        }
        if(bmi>18.5 && bmi<=25){
            return "Нормальный вес тела";
        }
        if(bmi>25 && bmi<=30){
            return "Избыточная масса тела";
        }
        if(bmi>30 && bmi<=35){
            return "Ожирение (Класс I)";
        }
        if(bmi>35 && bmi<=40){
            return "Ожирение (Класс II - тяжелое)";
        }
        if(bmi>40){
            return "Ожирение (Класс III - крайне тяжелое)";
        }

        return "null";
    }

    /*Максимальный вес*/
    public float maxWeight (float growth){

        float maxWeight = ((growth*growth)/10000.0f)*24.99F;
        return maxWeight;
    }

    /*Минимальный вес*/
    public float minWeight (float growth){

        float minWeight = ((growth*growth)/10000.0f)*18.5F;
        return minWeight;
    }

}
