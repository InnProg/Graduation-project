package com.nutrition.entity.client.controlFood;

import javax.persistence.*;

@Entity
@Table(name = "products_plans")
public class ProductPlan {

    @Id
    @Column(name = "pp_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "pp_group")
    private String group;

    @Column(name = "pp_name")
    private String name;

    @Column(name = "pp_quantity")
    private int quantity;

    @Column(name = "pp_kilocalories")
    private int kilocalories;

    @Column(name = "pp_protein")
    private int protein;

    @Column(name = "pp_fats")
    private int fats;

    @Column(name = "pp_carbohydrates")
    private int carbohydrates;

    @Column(name = "pp_time_eat")
    private String timeEat;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="plan_id")
    private Plan plan;

    public ProductPlan(){

    }

    public ProductPlan(long id){
        this.id = id;
    }

    public ProductPlan(String group, String name, int quantity, int kilocalories, int protein, int fats, int carbohydrates, String timeEat) {
        this.group = group;
        this.name = name;
        this.quantity = quantity;
        this.kilocalories = kilocalories;
        this.protein = protein;
        this.fats = fats;
        this.carbohydrates = carbohydrates;
        this.timeEat = timeEat;
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

    public String getTimeEat() {
        return timeEat;
    }

    public void setTimeEat(String timeEat) {
        this.timeEat = timeEat;
    }

    public Plan getPlan()
    {
        return this.plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    @Override
    public String toString() {
        return "ProductPlan{" +
                "id=" + id +
                ", group='" + group + '\'' +
                ", name='" + name + '\'' +
                ", quantity=" + quantity +
                ", kilocalories=" + kilocalories +
                ", protein=" + protein +
                ", fats=" + fats +
                ", carbohydrates=" + carbohydrates +
                ", timeEat='" + timeEat + '\'' +
                ", plan=" + plan +
                '}';
    }
}
