package com.nutrition.entity.specialist;

import com.nutrition.entity.User;
import com.nutrition.entity.client.Client;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "specialists")
public class Specialist implements Serializable {

    @Id
    @Column(name = "specialist_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "specialist_lastname")
    private String lastName;

    @Column(name = "specialist_firstname")
    private String firstName;

    @Column(name = "specialist_middlename")
    private String middleName;

    @Column(name = "specialist_age")
    private int age;

    @Column(name = "specialist_gender")
    private String gender;

    @Column(name = "specialist_specification")
    private String specification;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="user_id")
    private User user;

    @ManyToMany(mappedBy = "specialists")
    private Set<Client> clients;


    public Specialist(){

    }

    public Specialist(long id){
        this.id = id;
    }

    public Specialist(String lastName, String firstName, String middleName, int age, String gender, String specification, User userSpecialist) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.middleName = middleName;
        this.age = age;
        this.gender = gender;
        this.specification = specification;
        this.user = userSpecialist;
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

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<Client> getClients() {
        return clients;
    }

    public void setClients(Set<Client> clients) {
        this.clients = clients;
    }

    @Override
    public String toString() {
        return "Specialist{" +
                "id=" + id +
                ", lastName='" + lastName + '\'' +
                ", firstName='" + firstName + '\'' +
                ", middleName='" + middleName + '\'' +
                ", age='" + age + '\'' +
                ", gender='" + gender + '\'' +
                ", specification='" + specification + '\'' +
                ", user=" + user +
                ", clients=" + clients +
                '}';
    }
}
