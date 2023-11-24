package com.example.demo.repository;

import com.example.demo.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class BookRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static final String GET_ALL_BOOKS="select * from book";

    private static final String CREATE_BOOK="insert into book(name,isbn,subject,author,total_count,available_count)\n" +
            " values('%s','%s','%s','%s',%s,%s)";

    private static final String GET_BOOK_BY_ISBN ="select * from book where isbn = ?";

    private static final String UPDATE_BOOK="update book set name='%s', isbn='%s', subject='%s', author='%s',total_count =%s, available_count =%s\n" +
            " where id = %s;";

    private static final String DELETE_BOOK="delete from book where id=%s";

    public List<Book> getBooks() {

        List<Book> bookList = new ArrayList<>();
        try{
            jdbcTemplate.query(GET_ALL_BOOKS, new RowMapper<Book>() {
                @Override
                public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Book book = new Book();
                    book.setId(rs.getInt("id"));
                    book.setAuthor(rs.getString("author"));
                    book.setName(rs.getString("name"));
                    book.setIsbn(rs.getString("isbn"));
                    book.setSubject(rs.getString("subject"));
                    book.setAvailableCount(rs.getInt("available_count"));
                    book.setTotalCount(rs.getInt("total_count"));
                    bookList.add(book);
                    return null;
                }
            });
        }catch (Exception e){
            e.printStackTrace();
        }
        return bookList;
    }

    public int createBook(Book book){
        try{
            String finalQuery = String.format(CREATE_BOOK,book.getName(), book.getIsbn(), book.getSubject(),
                    book.getAuthor(), book.getTotalCount(), book.getAvailableCount());
            int result =  jdbcTemplate.update(finalQuery);
            return result;
        }catch (Exception e){
            e.printStackTrace();
            return Integer.MIN_VALUE;
        }

    }

    public Book getBookByIsbn(String isbn) {
        Book book = new Book();

        try{
            jdbcTemplate.query(GET_BOOK_BY_ISBN, new RowMapper<Book>() {
                @Override
                public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
                    book.setId(rs.getInt("id"));
                    book.setAuthor(rs.getString("author"));
                    book.setName(rs.getString("name"));
                    book.setIsbn(rs.getString("isbn"));
                    book.setSubject(rs.getString("subject"));
                    book.setAvailableCount(rs.getInt("available_count"));
                    book.setTotalCount(rs.getInt("total_count"));
                    return null;
                }
            },isbn);
        }catch (Exception e){
            e.printStackTrace();
        }
        return book;
    }

    public int updateBook(Book book) {
        String finalQuery= String.format(UPDATE_BOOK, book.getName(), book.getIsbn(), book.getSubject(),book.getAuthor(),
                book.getTotalCount(),book.getAvailableCount(), book.getId());
        try{
            return jdbcTemplate.update(finalQuery);
        }catch (DataAccessException ex){
            ex.printStackTrace();
            return Integer.MIN_VALUE;
        }catch(Exception ex){
            ex.printStackTrace();
            return Integer.MIN_VALUE;
        }

    }

    public int deleteBook(int bookId) {
        String finalQuery= String.format(DELETE_BOOK, bookId);

        try{
            return jdbcTemplate.update(finalQuery);
        }
        catch (DataAccessException ex){
            ex.printStackTrace();
            return Integer.MIN_VALUE;
        }
        catch(Exception ex){
            ex.printStackTrace();
            return Integer.MIN_VALUE;
        }
    }

}
