package dgsw.jsp.class1.farmersmorning;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import dgsw.jsp.class1.JdbcDoer;

public class DbUserManager implements UserManager {

	private static final String DB_PASSWORD = "1234";
	private static final String DB_USER_NAME = "root";
	private static final String DB_URL = "jdbc:mariadb://127.0.0.1/dgsw";
	private static final String DRIVER_NAME = "org.mariadb.jdbc.Driver";

	private JdbcDoer jdbcDoer = new JdbcDoer();

	@Override
	public void join(User user) {
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO user  ");
		sql.append("  (user_id, user_name, phone_number, password) ");
		sql.append("VALUES  ");
		sql.append("  (?, ?, ?, ?) ");
		System.out.println(user.getId() + "," + user.getName() + "," + user.getPhoneNumber() + "," + user.getName());

		jdbcDoer.update(sql.toString(), user.getId(), user.getName(), user.getPhoneNumber(), user.getPassword());
	}

	@Override
	public List<User> list() {
		List<User> result = new LinkedList<User>();

		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * ");
		sql.append("  FROM user ");

		ResultSet rs = jdbcDoer.query(sql.toString());
		try {
			while (rs.next()) {
				String id = rs.getString("user_id");
				String name = rs.getString("user_name");
				String password = rs.getString("password");
				String phoneNumber = rs.getString("phone_number");

				User user = new User();
				user.setId(id);
				user.setName(name);
				user.setPassword(password);
				user.setPhoneNumber(phoneNumber);

				result.add(user);
			}

			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public User getUser(String id) {
		User user = null;

		try {
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT * ");
			sql.append("  FROM user ");
			sql.append(" WHERE user_id = ? ");

			ResultSet rs = jdbcDoer.query(sql.toString(), id);
			while (rs.next()) {
				String userId = rs.getString("user_id");
				String name = rs.getString("user_name");
				String password = rs.getString("password");
				String phoneNumber = rs.getString("phone_number");

				user = new User();
				user.setId(userId);
				user.setName(name);
				user.setPassword(password);
				user.setPhoneNumber(phoneNumber);
			}

			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}

	@Override
	public void update(User user) {
		StringBuilder sql = new StringBuilder();
		sql.append("UPDATE user SET ");
		sql.append("  user_name = ?, ");
		sql.append("  password = ?, ");
		sql.append("  phone_number = ? ");
		sql.append(" WHERE user_id = ? ");

		jdbcDoer.update(sql.toString(), user.getName(), user.getPassword(), user.getPhoneNumber(), user.getId());
	}

	@Override
	public String isExist(String id) {
		User user = getUser(id);

		if (user == null) {
			return "N";
		} else {
			return "Y";
		}
	}

}