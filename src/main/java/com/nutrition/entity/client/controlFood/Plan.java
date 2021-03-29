package com.nutrition.entity.client.controlFood;

import com.nutrition.entity.client.Client;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;


@Entity
@Table(name = "plans")
public class Plan implements Serializable {

    @Id
    @Column(name = "plan_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "plan_date")
    private String date;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="client_id")
    private Client client;

    @OneToMany(mappedBy = "plan")
    private Set<ProductPlan> products;

    public Plan(){}

    public Plan(long id){
        this.id = id;
    }

    public Plan(String date) {
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

    public Set<ProductPlan> getProducts(){
        return this.products;
    }

    public void setProducts(Set<ProductPlan> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Plan{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", client=" + client +
                ", products=" + products +
                '}';
    }
}
