package com.vedisoft.servlets.daos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.vedisoft.servlets.pojos.Person;
import com.vedisoft.servlets.utilities.ConnectionPool;

public class PersonDao {
	public ArrayList<Person> findAll() {
		ConnectionPool pool = ConnectionPool.getInstance();
		pool.initialize();
		Connection conn = pool.getConnection();
		ArrayList<Person> listPersons = new ArrayList<Person>();
		try {
			String sql = "select * from person";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Person person = new Person();
				person.setName(rs.getString("name"));
				person.setPosition(rs.getString("position"));
				person.setSalary(rs.getInt("salary"));
				person.setOffice(rs.getString("office"));
				person.setPhone(rs.getString("phone"));
				java.sql.Date dt = rs.getDate("startDate");
				person.setStartDate(dt);
				listPersons.add(person);
			}
		} catch (SQLException sq) {
			System.out.println("Unable to find row." + sq);
		} finally {
			pool.putConnection(conn);
		}
		return listPersons;
	}
}
