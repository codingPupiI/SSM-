package service;

import domain.Student;

import java.util.List;

/**
 * @program: SSM_Test
 * @description:
 * @author: Leng
 **/

public interface StudentService {
    /**
     * 调用dao层insertStudent
     * @param student
     * @return
     */
    int insertStudent(Student student);

    /**
     * 调用dao层selectStudents
     * @return List<Student>
     */
    List<Student> selectStudents();
}
