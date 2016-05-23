package crudTest.dao;

import crudTest.model.User;

import java.util.List;


public interface UserDAO {
    public List<User> listUsers();
    public void addUser(User user);
    public void updateUser(User user);
    public void deleteUser(int id);
    public User getUserById(int id);
    public List<User> getUserByName(String name);

}
