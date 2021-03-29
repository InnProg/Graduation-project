package com.nutrition.entity.client.indicators;

import com.nutrition.entity.client.Client;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "anthropometry")
public class Anthropometry implements Serializable {


    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "weight")
    private float weight;

    @Column(name = "chest_circum")
    private float chestCircum;

    @Column(name = "waist_circum")
    private float waistCircum;

    @Column(name = "hips_circum")
    private float hipsCircum;

    @Column(name = "wrist_circum")
    private float wristCircum;

    @Column(name = "first_fold")
    private float firstFatFold;

    @Column(name = "second_fold")
    private float secondFatFold;

    @Column(name = "third_fold")
    private float thirdFatFold;

    @Column(name = "fourth_fold")
    private float fourthFatFold;

    @Column(name = "date")
    private String date;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="client_id")
    private Client client;

    public Anthropometry(){

    }

    public Anthropometry(long id){
        this.id = id;
    }

    public Anthropometry(float weight, float chestCircum, float waistCircum, float hipsCircum, float wristCircum, float firstFatFold, float secondFatFold, float thirdFatFold, float fourthFatFold, String date) {
        this.weight = weight;
        this.chestCircum = chestCircum;
        this.waistCircum = waistCircum;
        this.hipsCircum = hipsCircum;
        this.wristCircum = wristCircum;
        this.firstFatFold = firstFatFold;
        this.secondFatFold = secondFatFold;
        this.thirdFatFold = thirdFatFold;
        this.fourthFatFold = fourthFatFold;
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public float getChestCircum() {
        return chestCircum;
    }

    public void setChestCircum(float chestCircum) {
        this.chestCircum = chestCircum;
    }

    public float getWaistCircum() {
        return waistCircum;
    }

    public void setWaistCircum(float waistCircum) {
        this.waistCircum = waistCircum;
    }

    public float getHipsCircum() {
        return hipsCircum;
    }

    public void setHipsCircum(float hipsCircum) {
        this.hipsCircum = hipsCircum;
    }

    public float getFirstFatFold() {
        return firstFatFold;
    }

    public void setFirstFatFold(float firstFatFold) {
        this.firstFatFold = firstFatFold;
    }

    public float getSecondFatFold() {
        return secondFatFold;
    }

    public void setSecondFatFold(float secondFatFold) {
        this.secondFatFold = secondFatFold;
    }

    public float getThirdFatFold() {
        return thirdFatFold;
    }

    public void setThirdFatFold(float thirdFatFold) {
        this.thirdFatFold = thirdFatFold;
    }

    public float getFourthFatFold() {
        return fourthFatFold;
    }

    public void setFourthFatFold(float fourthFatFold) {
        this.fourthFatFold = fourthFatFold;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public float getWristCircum() {
        return wristCircum;
    }

    public void setWristCircum(float wristCircum) {
        this.wristCircum = wristCircum;
    }

    @Override
    public String toString() {
        return "Anthropometry{" +
                "id=" + id +
                ", weight=" + weight +
                ", chestCircum=" + chestCircum +
                ", waistCircum=" + waistCircum +
                ", hipsCircum=" + hipsCircum +
                ", wristCircum=" + wristCircum +
                ", firstFatFold=" + firstFatFold +
                ", secondFatFold=" + secondFatFold +
                ", thirdFatFold=" + thirdFatFold +
                ", fourthFatFold=" + fourthFatFold +
                ", date='" + date + '\'' +
                ", client=" + client +
                '}';
    }
}
