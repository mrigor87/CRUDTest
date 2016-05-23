package crudTest.services;

import crudTest.dao.UserDAO;
import crudTest.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDao;


    public void setUserDao(UserDAO userDao) {
        this.userDao = userDao;
    }

    @Override

    public List<User> listUsers() {
        return this.userDao.listUsers();
    }

    @Override

    public void addUser(User user) {
        this.userDao.addUser(user);
    }

    @Override

    public void updateUser(User user) {
        this.userDao.updateUser(user);
    }

    @Override

    public void deleteUser(int id) {
        this.userDao.deleteUser(id);
    }

    @Override

    public User getUserById(int id) {
        return this.userDao.getUserById(id);
    }

    @Override

    public List<User> getUserByName(String name) {
        return this.userDao.getUserByName(name);
    }
}
