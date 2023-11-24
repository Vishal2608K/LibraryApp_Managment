package com.example.demo.entity;

import java.util.Date;
public class Librarian {

    private String name;
    private Date appointedOn;

    private User user;

    public Librarian() {
        System.out.println("no args called");

    }

    public Librarian(String name, Date appointedOn) {
        this.name = name;
        this.appointedOn = appointedOn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getAppointedOn() {
        return appointedOn;
    }

    public void setAppointedOn(Date appointedOn) {
        this.appointedOn = appointedOn;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "name='" + name + '\'' +
                ", appointedOn=" + appointedOn +
                ", user=" + user +
                '}';
    }

}
