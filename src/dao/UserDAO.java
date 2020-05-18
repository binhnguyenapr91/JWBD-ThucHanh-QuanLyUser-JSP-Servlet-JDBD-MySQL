package dao;

import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    private String jdbcUrl = "jdbc:mysql://localhost:3306/demo?useSSL=false";
    private String username = "root";
    private String password = "";

    private static final String SELECT_ALL_USER = "select * from users";
    private static final String ADD_USER = "insert into users (name,email,country) values (?,?,?);";
    private static final String UPDATE_USER = "update users set name =?,email=?,country=? where id =?;";
    private static final String SELECT_BY_ID = "select * from users where id = ?;";
    private static final String DELETE_BY_ID = "delete from users where id = ?;";

    public UserDAO() {

    }

    protected Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    @Override
    public List<User> selectAllUser() {
        List<User> users = new ArrayList<>();
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(SELECT_ALL_USER);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return users;
    }

    @Override
    public void addUser(User user) throws SQLException {
        Connection conn = getConnection();
        PreparedStatement ps = conn.prepareStatement(ADD_USER);
        ps.setString(1, user.getName());
        ps.setString(2, user.getEmail());
        ps.setString(3, user.getCountry());
        ps.executeUpdate();
    }

    @Override
    public User findById(int id) {
        Connection conn = getConnection();
        User user = new User();
        try {
            PreparedStatement ps = conn.prepareStatement(SELECT_BY_ID);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setCountry(rs.getString(4));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }

    @Override
    public boolean updateUser(User user) {
        boolean rowUpdated = false;
        Connection conn = getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(UPDATE_USER);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getCountry());
            ps.setInt(4, user.getId());
            rowUpdated = ps.executeUpdate() > 0;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowUpdated;
    }

    @Override
    public boolean deleteUser(int id) {
        boolean rowDeleted = false;
        Connection conn = getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(DELETE_BY_ID);
            ps.setInt(1, id);
            rowDeleted = ps.executeUpdate() > 0;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowDeleted;
    }
}
