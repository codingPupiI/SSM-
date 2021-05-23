package service.impl;

import dao.StudentDao;
import domain.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.StudentService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: SSM_Test
 * @description:
 * @author: Leng
 **/
@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private StudentDao studentDao;
    /**
     * 调用dao层insertStudent
     *
     * @param student
     * @return
     */
    @Override
    public int insertStudent(Student student) {
        int nums = studentDao.insertStudent(student);
        return nums;
    }

    /**
     * 调用dao层selectStudents
     *
     * @return List<Student>
     */
    @Override
    public List<Student> selectStudents() {
        List<Student> students = studentDao.selectStudents();
        return students;
    }
}
