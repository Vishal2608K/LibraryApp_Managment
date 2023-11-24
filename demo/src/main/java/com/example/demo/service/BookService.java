package com.example.demo.service;

import com.example.demo.entity.Book;
import com.example.demo.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<Book> getBooks(){
        List<Book> bookList = bookRepository.getBooks();
        return bookList;
    }

    public boolean addBook(Book book){
        int result = bookRepository.createBook(book);
        return result > 0 ? true : false;
    }

    public Book getBookByIsbn(String isbn) {
        return bookRepository.getBookByIsbn(isbn);
    }

    public boolean updateBook(Book book) {
        int result = bookRepository.updateBook(book);
        return result > 0 ? true : false;
    }

    public boolean deleteBook(int bookId) {
        int result = bookRepository.deleteBook(bookId);
        return result > 0 ? true : false;
    }
}
