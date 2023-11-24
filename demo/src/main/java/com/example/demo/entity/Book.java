package com.example.demo.entity;

public class Book {

    private Integer id;
    private String name;
    private String isbn;
    private String subject;
    private String author;
    private Integer totalCount;
    private Integer availableCount;


    public Book() {

    }

    public Book(String name, String isbn, String subject, String author, Integer totalCount, Integer availableCount) {
        this.name = name;
        this.isbn = isbn;
        this.subject = subject;
        this.author = author;
        this.totalCount = totalCount;
        this.availableCount = availableCount;
    }

    public Book(Integer id, String name, String isbn, String subject, String author, Integer totalCount, Integer availableCount) {
        this.id = id;
        this.name = name;
        this.isbn = isbn;
        this.subject = subject;
        this.author = author;
        this.totalCount = totalCount;
        this.availableCount = availableCount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", isbn='" + isbn + '\'' +
                ", subject='" + subject + '\'' +
                ", author='" + author + '\'' +
                ", totalCount=" + totalCount +
                ", availableCount=" + availableCount +
                '}';
    }

    public Integer getAvailableCount() {
        return availableCount;
    }

    public void setAvailableCount(Integer availableCount) {
        this.availableCount = availableCount;
    }
}
