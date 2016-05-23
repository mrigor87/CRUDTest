package crudTest.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import crudTest.model.User;
import java.util.List;


@Repository
public class UserDAOImpl implements UserDAO {


    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<User> listUsers() {
        Session session = sessionFactory.openSession();
        @SuppressWarnings("unchecked")
        List<User> usersList = session.createQuery("from User").list();
        session.close();
        return usersList;
    }


    @Override
    public void addUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction tr = session.beginTransaction();
        session.saveOrUpdate(user);
        tr.commit();
        session.close();

    }


    @Override
    public void updateUser(User user) {
        if (user.getName().length() <= 25) {
            Session session = sessionFactory.openSession();
            Transaction tr = session.beginTransaction();
            session.saveOrUpdate(user);
            tr.commit();
            session.close();
        }
    }

    @Override
    public void deleteUser(int id) {
        Session session = sessionFactory.openSession();
        Transaction tr = session.beginTransaction();
        User user = (User) session.load(User.class, id);
        session.delete(user);
        tr.commit();
        session.close();
    }


    @Override
    public User getUserById(int id) {
        Session session = sessionFactory.openSession();
        User user = (User) session.load(User.class, id);
        return user;
    }

    @Override
    public List<User> getUserByName(String name) {
        Session session = sessionFactory.openSession();
        List<User> users = session.createCriteria(User.class).add(Restrictions.eq("name", name)).list();
        session.close();
        return users;
    }
}
