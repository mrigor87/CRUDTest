package crudTest.controller;

import crudTest.model.User ;
import crudTest.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {


    @Autowired
    private UserService userService;



    protected PagedListHolder<User> articles;



    @RequestMapping("form")
    public ModelAndView getForm(@ModelAttribute User user) {
        return new ModelAndView("new");
    }

    @RequestMapping("register")
    public ModelAndView registerUser(@ModelAttribute User user) {
        userService.addUser(user);
        return new ModelAndView("redirect:list");
    }


    @RequestMapping("edit")
    public ModelAndView editUser(@RequestParam int id,@ModelAttribute User user) {
        user = userService.getUserById(id);
        return new ModelAndView("edit","user",user);
    }


    @RequestMapping("update")
    public ModelAndView updateUser(@ModelAttribute User user) {
        userService.updateUser(user);
        return new ModelAndView("redirect:list");
    }


    @RequestMapping("delete")
    public ModelAndView deleteUser(@RequestParam int id) {
        userService.deleteUser(id);
        return new ModelAndView("redirect:list");
    }



    @RequestMapping("list")
    public ModelAndView getList(@RequestParam(required = false) Integer page) {
        List<User> users = userService.listUsers();
        ModelAndView modelAndView=new ModelAndView("list");

        //paging
        PagedListHolder<User> pagedListHolder = new PagedListHolder<>(users);
        pagedListHolder.setPageSize(10);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());
        if(page == null || page > pagedListHolder.getPageCount())
            page = 1;
        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount())
        {
            pagedListHolder.setPage(0);
            modelAndView.addObject("userList", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount())
        {
            pagedListHolder.setPage(page - 1);
            modelAndView.addObject("userList",pagedListHolder.getPageList());
        }
        //end paging




        return modelAndView;
    }




    @RequestMapping("search")
    public ModelAndView search(@ModelAttribute User user) {
        return new ModelAndView("search");
    }


    @RequestMapping("searchUser")
    public ModelAndView getSearchList(@ModelAttribute User user) {
        List searchUsers = userService.getUserByName(user.getName());
        return new ModelAndView("searchList","searchUsers",searchUsers);
    }
}
