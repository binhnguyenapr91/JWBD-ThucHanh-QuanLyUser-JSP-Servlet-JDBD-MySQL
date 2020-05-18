package dao;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public List<User> selectAllUser();
    public void addUser(User user) throws SQLException;
    public User findById(int id);
    public boolean updateUser(User user);
    public boolean deleteUser(int id);
    public List<User> searchByCountry(String country);
}
