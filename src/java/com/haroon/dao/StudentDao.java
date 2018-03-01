/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.haroon.dao;

import com.haroon.model.Student;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Persistence Context implementation using JPA
 * @author haroon.ghawsi
 */
@Stateless
public class StudentDao implements StudentDaoLocal {
    
    @PersistenceContext
    private EntityManager em;
    
    /**
     * Persisting the Student object into the database
     * @param student 
     */

    @Override
    public void addStudent(Student student) {
        em.persist(student);
    }
    
    /**
     * Editing the student object
     * @param student 
     */
    
    @Override
    public void editStudent(Student student) {
        em.merge(student);
    }
    
    /**
     * Removing the student object from the database
     * @param studentId 
     */

    @Override
    public void deleteStudent(int studentId) {
        em.remove(getStudent(studentId));
    }
    
    /**
     * Getting student by id
     * @param studentId
     * @return 
     */

    @Override
    public Student getStudent(int studentId) {
        return em.find(Student.class, studentId);
    }
    
    /**
     * Gettting all students from database
     * @return 
     */

    @Override
    public List<Student> getAllStudents() {
        return em.createNamedQuery("Student.getAll").getResultList();
    }
    
    
}
