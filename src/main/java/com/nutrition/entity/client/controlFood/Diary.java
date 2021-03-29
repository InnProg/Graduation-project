package com.nutrition.entity.client.controlFood;

import com.nutrition.entity.client.Client;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;


@Entity
@Table(name = "diaries")
public class Diary implements Serializable {

    @Id
    @Column(name = "diary_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "diary_date")
    private String date;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="client_id")
    private Client client;

    @OneToMany(mappedBy = "diary")
    private Set<ProductDiary> products;

    public Diary(){}

    public Diary(long id){
        this.id = id;
    }

    public Diary(String date) {
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public Set<ProductDiary> getProducts() {
        return products;
    }

    public void setProducts(Set<ProductDiary> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Diary{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", client=" + client +
                '}';
    }
}
