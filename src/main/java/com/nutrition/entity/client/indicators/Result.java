package com.nutrition.entity.client.indicators;

import com.nutrition.entity.client.Client;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "results")
public class Result implements Serializable {


    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "actual_fat_percent")
    private float actualFatPercent;

    @Column(name = "optimal_fat_percent")
    private String optimalFatPercent;

    @Column(name = "bmi")
    private float bmi;

    @Column(name = "waist_hip_index")
    private float waistHipIndex;

    @Column(name = "weight_breitman")
    private float weightBreitman;

    @Column(name = "weight_broca")
    private float weightBroca;

    @Column(name = "weight_borngardt")
    private float weightBorngardt;

    @Column(name = "weight_max")
    private float weightMax;

    @Column(name = "weight_min")
    private float weightMin;

    @Column(name = "core_exchange")
    private int coreExchange;

    @Column(name = "daily_energy")
    private int dailyEnergy;

    @Column(name = "body_type")
    private String bodyType;

    @Column(name = "date")
    private String date;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="client_id")
    private Client client;

    public Result(){

    }

    public Result(long id){
        this.id = id;
    }

    public Result(float actualFatPercent, String optimalFatPercent, float bmi, float waistHipIndex, float weightBreitman, float weightBroca, float weightBorngardt, float weightMax, float weightMin, int coreExchange, int dailyEnergy, String bodyType, String date) {
        this.actualFatPercent = actualFatPercent;
        this.optimalFatPercent = optimalFatPercent;
        this.bmi = bmi;
        this.waistHipIndex = waistHipIndex;
        this.weightBreitman = weightBreitman;
        this.weightBroca = weightBroca;
        this.weightBorngardt = weightBorngardt;
        this.weightMax = weightMax;
        this.weightMin = weightMin;
        this.coreExchange = coreExchange;
        this.dailyEnergy = dailyEnergy;
        this.bodyType = bodyType;
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public float getActualFatPercent() {
        return actualFatPercent;
    }

    public void setActualFatPercent(float actualFatPercent) {
        this.actualFatPercent = actualFatPercent;
    }

    public String getOptimalFatPercent() {
        return optimalFatPercent;
    }

    public void setOptimalFatPercent(String optimalFatPercent) {
        this.optimalFatPercent = optimalFatPercent;
    }

    public float getBmi() {
        return bmi;
    }

    public void setBmi(float bmi) {
        this.bmi = bmi;
    }

    public float getWaistHipIndex() {
        return waistHipIndex;
    }

    public void setWaistHipIndex(float waistHipIndex) {
        this.waistHipIndex = waistHipIndex;
    }

    public float getWeightBreitman() {
        return weightBreitman;
    }

    public void setWeightBreitman(float weightBreitman) {
        this.weightBreitman = weightBreitman;
    }

    public float getWeightBroca() {
        return weightBroca;
    }

    public void setWeightBroca(float weightBroca) {
        this.weightBroca = weightBroca;
    }

    public float getWeightBorngardt() {
        return weightBorngardt;
    }

    public void setWeightBorngardt(float weightBorngardt) {
        this.weightBorngardt = weightBorngardt;
    }

    public float getWeightMax() {
        return weightMax;
    }

    public void setWeightMax(float weightMax) {
        this.weightMax = weightMax;
    }

    public float getWeightMin() {
        return weightMin;
    }

    public void setWeightMin(float weightMin) {
        this.weightMin = weightMin;
    }

    public int getCoreExchange() {
        return coreExchange;
    }

    public void setCoreExchange(int coreExchange) {
        this.coreExchange = coreExchange;
    }

    public int getDailyEnergy() {
        return dailyEnergy;
    }

    public void setDailyEnergy(int dailyEnergy) {
        this.dailyEnergy = dailyEnergy;
    }

    public String getBodyType() {
        return bodyType;
    }

    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
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

    @Override
    public String toString() {
        return "Result{" +
                "id=" + id +
                ", actualFatPercent=" + actualFatPercent +
                ", optimalFatPercent=" + optimalFatPercent +
                ", bmi=" + bmi +
                ", waistHipIndex=" + waistHipIndex +
                ", weightBreitman=" + weightBreitman +
                ", weightBroca=" + weightBroca +
                ", weightBorngardt=" + weightBorngardt +
                ", weightMax=" + weightMax +
                ", weightMin=" + weightMin +
                ", coreExchange=" + coreExchange +
                ", dailyEnergy=" + dailyEnergy +
                ", bodyType='" + bodyType + '\'' +
                ", date='" + date + '\'' +
                ", client=" + client +
                '}';
    }
}
