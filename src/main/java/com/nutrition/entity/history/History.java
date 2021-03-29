package com.nutrition.entity.history;

import com.nutrition.entity.User;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "histories")
public class History implements Serializable {

    @Id
    @Column(name = "history_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "history_date")
    private String date;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="user_id")
    private User user;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Action> actions;

    public History(){}

    public History(String date) {
        this.date = date;
    }

    public Long getId() {
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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<Action> getActions() {
        return actions;
    }

    public void setActions(Set<Action> actions) {
        this.actions = actions;
    }

    @Override
    public String toString() {
        return "History{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", user=" + user +
                ", actions=" + actions +
                '}';
    }
}
