package controller;

import domain.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.StudentService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @program: SSM_Test
 * @description:
 * @author: Leng
 **/
@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService studentService;

    /**
     * 注册学生
     * @param student
     * @return
     */
    @RequestMapping("/insertStudent.do")
    public ModelAndView addStudent(Student student) {
        ModelAndView modelAndView = new ModelAndView();
        String tips = "failed";
        int nums = studentService.insertStudent(student);
        if (nums > 0) {
            //注册成功
            tips = "学生" + student.getName() + "注册成功";
        }
        modelAndView.addObject("tips", tips);
        modelAndView.setViewName("result");
        return modelAndView;
    }

    //处理ajax
    @RequestMapping("/selectStudents.do")
    @ResponseBody
    public List<Student> selectStudents(){
        List<Student> students = studentService.selectStudents();
        return students;
    }
}
