package pl.garusm.users;

import pl.garusm.userDao.User;
import pl.garusm.userDao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserAdd", urlPatterns = "/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        response.getWriter().print("<h1>get parameter</h1>" + name + email + password);
        UserDao userDao = new UserDao();

        User user = new User(email, name, password);
        response.getWriter().print("<br><br><br><br><h1>dane stworzonego uzytkownika</h1>" + user.getUserName() + user.getEmail() + user.getPassword());

        userDao.create(user);

        response.sendRedirect(request.getContextPath() + "/user/list");
    }

}
