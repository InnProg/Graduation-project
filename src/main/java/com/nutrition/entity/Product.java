package com.nutrition.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "products")
public class Product implements Serializable {

    @Id
    @Column(name = "product_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "product_group")
    private String group;

    @Column(name = "product_name")
    private String name;

    @Column(name = "product_quantity")
    private int quantity;

    @Column(name = "product_kilocalories")
    private int kilocalories;

    @Column(name = "product_protein")
    private int protein;

    @Column(name = "product_fats")
    private int fats;

    @Column(name = "product_carbohydrates")
    private int carbohydrates;

    public Product(){}

    public Product(long id){
        this.id = id;
    }

    public Product(String group, String name, int quantity, int kilocalories, int protein, int fats, int carbohydrates) {
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

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", group='" + group + '\'' +
                ", name='" + name + '\'' +
                ", quantity=" + quantity +
                ", kilocalories=" + kilocalories +
                ", protein=" + protein +
                ", fats=" + fats +
                ", carbohydrates=" + carbohydrates +
                '}';
    }
}
