package com.example.demo.service;

import com.example.demo.entity.Book;
import com.example.demo.entity.Student;
import com.example.demo.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public List<Student> getStudents(){
        List<Student> studentList = studentRepository.getStudents();
        return studentList;
    }

    public boolean saveStudent(Student student){
        return studentRepository.createStudent(student);
    }

    public Student getStudentByRollNo(String rollNo) {
        return studentRepository.getStudentByRollNo(rollNo);
    }

    public boolean updateStudent(Student student) {
        int result = studentRepository.updateStudent(student);
        if(result > 0){
            return true;
        }
        return false;
    }

    public boolean deleteStudent(int studentId) {
        int result = studentRepository.deleteStudent(studentId);
        if(result > 0){
            return true;
        }
        return false;
    }
}
