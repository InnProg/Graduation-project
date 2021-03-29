package com.nutrition.methods;

public class AnthropMethods {

    /*Индекс Брейтмана*/
    public float calcIndexBreitman(float growth){
      float weight = growth*0.7F-50;
      return weight;
    }

    /*Индекс Брока*/
    public float calcIndexBrock(float growth){
        float weight;
        if(growth<165){
            weight = growth-100;
            return weight;
        }
        else if(growth>=165 && growth<175){
            weight = growth-105;
            return weight;
        }
        else if(growth>=175){
            weight = growth-110;
            return weight;
        }

        return 0;
    }

    /*Индекс Борнгардта*/
    public float calcIndexBorngardt(float growth, float chestСircum){
        float weight = (growth*chestСircum)/240.0F;
        return weight;
    }

    /*Индекс талия/бедра*/
    public float calcIndexWaistHip(float waistCircum, float hipsCircum){
        float index = (waistCircum/hipsCircum);
        return index;
    }

    /*Расшифровка индекса талия/бедра*/
    public String conclusionIndexWaistHip(String gender, float waistCircum, float hipsCircum){
        float index = calcIndexWaistHip(waistCircum, hipsCircum);
        switch (gender){
            case "муж":
                if(index<0.9)
                    return "Нормальный вес";
                else if(index>=0.90 && index<=0.99)
                    return "Избыточный вес";
                else if(index>=1)
                    return "Ожирение";
            case "жен":
                if(index<0.8)
                    return "Нормальный вес";
                else if(index>=0.80 && index<=0.84)
                    return "Избыточный вес";
                else if(index>0.85)
                    return "Ожирение";
            default:
                break;
        }
        return "null";
    }

    /*Процент фактического жира в организме*/
    public float calcBodyFatMass(String gender, int age, float firstFold, float secondFold, float thirdFold, float fourthFold){
        float bfm;
        float s4 = firstFold+secondFold+thirdFold+fourthFold;
        switch (gender){
            case "муж":
                bfm = (495.0F/(1.109380F-0.0008267F*s4+0.0000016F*(s4*s4)-0.0002574F*age))-450.0F;
                return bfm;
            case "жен":
                bfm = (495.0F/(1.099421F-0.0009929F*s4+0.0000023F*(s4*s4)-0.0001392F*age))-450.0F;
                return bfm;
            default:
                return 0;
        }
    }

    /*Процент оптимального жира в организме*/
    public String optimalProcentFat (String gender){
        switch (gender){
            case "муж":
                return "18-24%";
            case "жен":
                return "25-31%";
            default:
                return "null";
        }
    }

    /*Тип телосложения*/
    public String typeBody(float wristCircum, String gender){
        switch (gender){
            case "муж":
                if(wristCircum<16)
                    return "Астеник";
                else if(wristCircum>=16 && wristCircum<18)
                    return "Нормостеник";
                else if (wristCircum>=18)
                    return "Гиперстеник";
            case "жен":
                if(wristCircum<14.5)
                    return "Астеник";
                else if(wristCircum>=14.5 && wristCircum<16.5)
                    return "Нормостеник";
                else if (wristCircum>=16.5)
                    return "Гиперстеник";
            default:
                return "null";

        }
    }


}