package dao;

import domain.Student;

import java.util.List;

/**
 * @program: SSM_Test
 * @description:
 * @author: Leng
 **/

public interface StudentDao {
    /**
     * 插入学生
     * @param student
     * @return
     */
    int insertStudent(Student student);

    /**
     * 查找学生
     * @return
     */
    List<Student> selectStudents();
}
