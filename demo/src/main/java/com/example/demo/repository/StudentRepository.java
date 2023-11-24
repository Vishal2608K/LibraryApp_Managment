package com.example.demo.repository;

import com.example.demo.entity.Student;
import com.example.demo.entity.Student;
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
public class StudentRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static final String GET_ALL_STUDENTS ="select * from student";

    private static final String CREATE_STUDENT ="insert into student(name,address,course,roll_no)\n" +
            " values('%s','%s','%s','%s')";

    private static final String GET_STUDENT_BY_ROLL_NO ="select * from student where roll_no = ?";

    private static final String UPDATE_STUDENT ="update student set name='%s', address='%s', course='%s', roll_no='%s'\n" +
            " where id = %s;";

    private static final String DELETE_STUDENT ="delete from student where id=%s";



    public List<Student> getStudents() {

        List<Student> studentList = new ArrayList<>();

        jdbcTemplate.query(GET_ALL_STUDENTS, new RowMapper<Student>() {
            @Override
            public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setAddress(rs.getString("address"));
                student.setCourse(rs.getString("course"));
                student.setRollNo(rs.getString("roll_no"));
                student.setName(rs.getString("name"));

                studentList.add(student);
                return null;
            }
        });
        return studentList;
    }

    public boolean createStudent(Student student){
        String finalQuery = String.format(CREATE_STUDENT,student.getName(), student.getAddress(), student.getCourse(),
                student.getRollNo());
       int result =  jdbcTemplate.update(finalQuery);
       return result>0 ? true:false;
    }

    public Student getStudentByRollNo(String bookName) {
        Student student = new Student();
        jdbcTemplate.query(GET_STUDENT_BY_ROLL_NO, new RowMapper<Student>() {
            @Override
            public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
                student.setId(rs.getInt("id"));
                student.setAddress(rs.getString("address"));
                student.setCourse(rs.getString("course"));
                student.setRollNo(rs.getString("roll_no"));
                student.setName(rs.getString("name"));
                return null;
            }
        },bookName);

        return student;
    }

    public int updateStudent(Student student) {
        String finalQuery= String.format(UPDATE_STUDENT, student.getName(), student.getAddress(), student.getCourse(),student.getRollNo(),
                student.getId());
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

    public int deleteStudent(int studentId) {
        String finalQuery= String.format(DELETE_STUDENT, studentId);

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
