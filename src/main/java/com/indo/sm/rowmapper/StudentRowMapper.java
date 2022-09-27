package com.indo.sm.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.indo.sm.API.Student;



public class StudentRowMapper implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
Student student = new  Student();
		
		
		student.setId(rs.getInt("id"));
		student.setName(rs.getString("name"));
		student.setMobile(rs.getLong("mobile"));
		student.setCountry(rs.getString("country"));
		return  student;
	}

}
