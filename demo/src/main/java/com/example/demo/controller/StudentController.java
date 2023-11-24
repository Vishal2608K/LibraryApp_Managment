//package com.example.demo.controller;
//
//import com.example.demo.entity.Book;
//import com.example.demo.service.BookService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.List;
//
//
//@RestController
////@RequestMapping("book")
//public class StudentController {
//
//    @Autowired
//    private BookService bookService;
//
//    @GetMapping
//    public Book getBookByQueryParam(@RequestParam(value = "bookName") String book){
//        return bookService.getBookByIsbn(book);
//    }
//
//    @GetMapping("/list")
//    public List<Book> getBooks(){
//        List<Book> books = bookService.getBooks();
//        return books;
//    }
//
//
//    @GetMapping("/{bookName}")
//    public Book getBooks(@PathVariable String bookName){
//        Book book = bookService.getBookByIsbn(bookName);
//        return book;
//    }
//
//    @PostMapping("/create")
//    public boolean createBook(@RequestBody Book book){
//         bookService.addBook(book);
//         return true;
//    }
//
//    @PutMapping("/update")
//    public boolean updateBook(@RequestBody Book book){
//        return bookService.updateBook(book);
//    }
//
//    @DeleteMapping("/delete")
//    public boolean deleteBook(@RequestParam("id") int bookId){
//        return bookService.deleteBook(bookId);
//    }
//}
