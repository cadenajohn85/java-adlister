package com.codeup.adlister.dao;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        PreparedStatement stmt;
        try {
            String sql = "SELECT * FROM users WHERE username = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            return createUsersFromResults(rs);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error retrieving user object.", e);
        }
    }

//    public boolean doesUserExist(String username) {
//
//    }

    @Override
    public Long insert(User user) {
        try {
            PreparedStatement stmt = connection.prepareStatement(createInsertQuery(user), PreparedStatement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());

            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error creating a new user.", e);
        }
    }

    private User createUsersFromResults(ResultSet rs) throws SQLException {
        // If username doesn't exist, return null
        if (!rs.next()) {
            return null;
        }

//        rs.next();
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password")
        );
    }

    private String createInsertQuery(User user) {
        return "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
    }

    // Create main method to test methods
    public static void main(String[] args) {
        Users userDao = new MySQLUsersDao(new Config());
        System.out.println(userDao.findByUsername("gwash"));
    }

}
