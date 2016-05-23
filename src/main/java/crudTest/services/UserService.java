package crudTest.services;

import crudTest.model.User;

import java.util.List;

public interface UserService {
    public List<User> listUsers();
    public void addUser(User user);
    public void updateUser(User user);
    public void deleteUser(int id);
    public User getUserById(int id);
    public List<User> getUserByName(String name);
}
