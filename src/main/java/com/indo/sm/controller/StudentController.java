package com.indo.sm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.indo.sm.API.Student;
import com.indo.sm.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(method = RequestMethod.GET)

	@GetMapping("/showStudent")
	public String showStudentList(Model model) {

		List<Student> studentList = studentService.loadStudents();

		model.addAttribute("students", studentList);

		return "student-list";
	}

	@GetMapping("/showAddStudent")
	public String addStudent(Model model) {

		Student student = new Student();

		model.addAttribute("student", student);

		return "add-student";
	}

	@PostMapping("/save-student")
	public String saveStudent(Student student) {

		System.out.println(student);

		//studentService.saveStudent(student);

		 if (student.getId()==0) {
			 studentService.saveStudent(student);
		 }
		 else {
			 studentService.update(student);
		 }
		return "redirect:/showStudent";
	}

	@GetMapping("/updateStudent")
	public String updateStudent(@RequestParam("userId") int id, @ModelAttribute("student") Student student) {
		// Student mystudent = new Student();
		// model.addAttribute("student", mystudent);

		System.out.println("looking for data for student id " + id);

		Student theStudent = studentService.getStudent(id);
		System.out.println(theStudent);

		// student info
		student.setId(theStudent.getId());
		student.setName(theStudent.getName());
		student.setMobile(theStudent.getMobile());
		student.setCountry(theStudent.getCountry());

		return "add-student";
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("userId") int id) {
		// Student mystudent = new Student();
		// model.addAttribute("student", mystudent);
        
		studentService.deleteStudent(id);
		
		return "redirect:/showStudent";
	}
	

	/*
	 * @ResponseBody
	 * 
	 * @GetMapping("/thanksyou") public String thankyou() { return
	 * "Thank you... Your record has been added to the database" ; }
	 */

}
