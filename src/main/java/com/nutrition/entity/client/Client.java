package com.nutrition.entity.client;

import com.nutrition.entity.client.controlFood.Diary;
import com.nutrition.entity.client.controlFood.Plan;
import com.nutrition.entity.client.indicators.Anthropometry;
import com.nutrition.entity.client.indicators.Physiology;
import com.nutrition.entity.client.indicators.Result;
import com.nutrition.entity.client.productBase.ProductClient;
import com.nutrition.entity.specialist.Specialist;
import com.nutrition.entity.User;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;


@Entity
@Table(name = "clients")
public class Client implements Serializable {

    @Id
    @Column(name = "client_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id; //******************************************

    @Column(name = "client_lastname")
    private String lastName; //******************************************

    @Column(name = "client_firstname")
    private String firstName; //******************************************

    @Column(name = "client_middlename")
    private String middleName; //******************************************

    @Column(name = "client_age")
    private int age; //******************************************

    @Column(name = "client_gender")
    private String gender; //******************************************

    @Column(name = "client_initial_weight")
    private float initialWeight;

    @Column(name = "client_height")
    private float height;

    @Column(name = "client_goal")
    private String goalNutrition;

    @Column(name = "client_lpa")
    private float lpa;  //level Physical Activity

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="user_id")
    private User user;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Specialist> specialists;

    @OneToMany(mappedBy = "client")
    private Set<Diary> diaries;

    @OneToMany(mappedBy = "client")
    private Set<Plan> plans;

    @OneToMany(mappedBy = "client")
    private Set<Anthropometry> anthropometries;

    @OneToMany(mappedBy = "client")
    private Set<Physiology> physiologies;

    @OneToMany(mappedBy = "client")
    private Set<Result> results;

    @OneToMany(mappedBy = "client")
    private Set<ProductClient> products;


    public Client() {
    }

    public Client(Long id){
        this.id = id;
    }

    public Client(String lastName, String firstName, String middleName, int age, String gender, float initialWeight, float height, String goalNutrition, float lpa) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.middleName = middleName;
        this.age = age;
        this.gender = gender;
        this.initialWeight = initialWeight;
        this.height = height;
        this.goalNutrition = goalNutrition;
        this.lpa = lpa;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public float getInitialWeight() {
        return initialWeight;
    }

    public void setInitialWeight(float initialWeight) {
        this.initialWeight = initialWeight;
    }

    public float getHeight() {
        return height;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public String getGoalNutrition() {
        return goalNutrition;
    }

    public void setGoalNutrition(String goalNutrition) {
        this.goalNutrition = goalNutrition;
    }

    public float getLpa() {
        return lpa;
    }

    public void setLpa(float lpa) {
        this.lpa = lpa;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<Specialist> getSpecialists() {
        return specialists;
    }

    public void setSpecialists(Set<Specialist> specialists) {
        this.specialists = specialists;
    }

    public Set<Diary> getDiaries() {
        return diaries;
    }

    public void setDiaries(Set<Diary> diaries) {
        this.diaries = diaries;
    }

    public Set<Plan> getPlans() {
        return plans;
    }

    public void setPlans(Set<Plan> plans) {
        this.plans = plans;
    }

    public Set<Anthropometry> getAnthropometries() {
        return anthropometries;
    }

    public void setAnthropometries(Set<Anthropometry> anthropometries) {
        this.anthropometries = anthropometries;
    }

    public Set<Physiology> getPhysiologies() {
        return physiologies;
    }

    public void setPhysiologies(Set<Physiology> physiologies) {
        this.physiologies = physiologies;
    }

    public Set<Result> getResults() {
        return results;
    }

    public void setResults(Set<Result> results) {
        this.results = results;
    }

    public Set<ProductClient> getProducts() {
        return products;
    }

    public void setProducts(Set<ProductClient> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Client{" +
                "id=" + id +
                ", lastName='" + lastName + '\'' +
                ", firstName='" + firstName + '\'' +
                ", middleName='" + middleName + '\'' +
                ", age='" + age + '\'' +
                ", gender='" + gender + '\'' +
                ", initialWeight=" + initialWeight +
                ", height=" + height +
                ", goalNutrition='" + goalNutrition + '\'' +
                ", lpa=" + lpa +
                ", user=" + user +
                ", specialists=" + specialists +
                ", diaries=" + diaries +
                ", plans=" + plans +
                ", anthropometries=" + anthropometries +
                ", physiologies=" + physiologies +
                ", results=" + results +
                ", products=" + products +
                '}';
    }
}
