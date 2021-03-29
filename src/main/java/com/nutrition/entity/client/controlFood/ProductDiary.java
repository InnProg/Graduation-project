package com.nutrition.entity.client.controlFood;

import com.nutrition.entity.client.controlFood.Diary;

import javax.persistence.*;

@Entity
@Table(name = "products_diaries")
public class ProductDiary {

    @Id
    @Column(name = "pd_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "pd_group")
    private String group;

    @Column(name = "pd_name")
    private String name;

    @Column(name = "pd_quantity")
    private int quantity;

    @Column(name = "pd_kilocalories")
    private int kilocalories;

    @Column(name = "pd_protein")
    private int protein;

    @Column(name = "pd_fats")
    private int fats;

    @Column(name = "pd_carbohydrates")
    private int carbohydrates;

    @Column(name = "pd_time_eat")
    private String timeEat;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="diary_id")
    private Diary diary;

    public ProductDiary(){

    }

    public ProductDiary(long id){
        this.id = id;
    }


    public ProductDiary(String group, String name, int quantity, int kilocalories, int protein, int fats, int carbohydrates, String timeEat) {
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

    public Diary getDiary() {
        return diary;
    }

    public void setDiary(Diary diary) {
        this.diary = diary;
    }

    @Override
    public String toString() {
        return "ProductDiary{" +
                "id=" + id +
                ", group='" + group + '\'' +
                ", name='" + name + '\'' +
                ", quantity=" + quantity +
                ", kilocalories=" + kilocalories +
                ", protein=" + protein +
                ", fats=" + fats +
                ", carbohydrates=" + carbohydrates +
                ", timeEat='" + timeEat + '\'' +
                ", diary=" + diary +
                '}';
    }
}
