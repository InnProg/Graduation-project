package com.nutrition.entity.client.productBase;


import com.nutrition.entity.client.Client;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name = "products_clients")
public class ProductClient implements Serializable {


    @Id
    @Column(name = "pc_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "pc_group")
    private String group;

    @Column(name = "pc_name")
    private String name;

    @Column(name = "pc_quantity")
    private int quantity;

    @Column(name = "pc_kilocalories")
    private int kilocalories;

    @Column(name = "pc_protein")
    private int protein;

    @Column(name = "pc_fats")
    private int fats;

    @Column(name = "pc_carbohydrates")
    private int carbohydrates;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="client_id")
    private Client client;

    public ProductClient(){

    }

    public ProductClient(long id){
        this.id = id;
    }

    public ProductClient(String group, String name, int quantity, int kilocalories, int protein, int fats, int carbohydrates) {
        this.group = group;
        this.name = name;
        this.quantity = quantity;
        this.kilocalories = kilocalories;
        this.protein = protein;
        this.fats = fats;
        this.carbohydrates = carbohydrates;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getKilocalories() {
        return kilocalories;
    }

    public void setKilocalories(int kilocalories) {
        this.kilocalories = kilocalories;
    }

    public int getProtein() {
        return protein;
    }

    public void setProtein(int protein) {
        this.protein = protein;
    }

    public int getFats() {
        return fats;
    }

    public void setFats(int fats) {
        this.fats = fats;
    }

    public int getCarbohydrates() {
        return carbohydrates;
    }

    public void setCarbohydrates(int carbohydrates) {
        this.carbohydrates = carbohydrates;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    @Override
    public String toString() {
        return "ProductClient{" +
                "id=" + id +
                ", group='" + group + '\'' +
                ", name='" + name + '\'' +
                ", quantity=" + quantity +
                ", kilocalories=" + kilocalories +
                ", protein=" + protein +
                ", fats=" + fats +
                ", carbohydrates=" + carbohydrates +
                ", client=" + client +
                '}';
    }
}
