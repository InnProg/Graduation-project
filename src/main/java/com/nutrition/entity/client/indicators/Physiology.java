package com.nutrition.entity.client.indicators;

import com.nutrition.entity.client.Client;

import javax.persistence.*;
import java.io.Serializable;



@Entity
@Table(name = "physiology")
public class Physiology implements Serializable {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "systolic_pressure")
    private int systolicPressure;

    @Column(name = "diastolic_pressure")
    private int diastolicPressure;

    @Column(name = "heart_rate")
    private int heartRate;

    @Column(name = "date")
    private String date;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="client_id")
    private Client client;




    public Physiology(){

    }

    public Physiology(long id){
        this.id = id;
    }

    public Physiology(int systolicPressure, int diastolicPressure, int heartRate, String date) {
        this.systolicPressure = systolicPressure;
        this.diastolicPressure = diastolicPressure;
        this.heartRate = heartRate;
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getSystolicPressure() {
        return systolicPressure;
    }

    public void setSystolicPressure(int systolicPressure) {
        this.systolicPressure = systolicPressure;
    }

    public int getDiastolicPressure() {
        return diastolicPressure;
    }

    public void setDiastolicPressure(int diastolicPressure) {
        this.diastolicPressure = diastolicPressure;
    }

    public int getHeartRate() {
        return heartRate;
    }

    public void setHeartRate(int heartRate) {
        this.heartRate = heartRate;
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
        return "Physiology{" +
                "id=" + id +
                ", systolicPressure=" + systolicPressure +
                ", diastolicPressure=" + diastolicPressure +
                ", heartRate=" + heartRate +
                ", date='" + date + '\'' +
                ", client=" + client +
                '}';
    }
}
