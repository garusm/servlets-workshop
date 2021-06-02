package pl.garusm.users;

import pl.garusm.userDao.User;
import pl.garusm.userDao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserEdit", urlPatterns = "/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int id = Integer.parseInt(request.getParameter("id"));

        UserDao userDao = new UserDao();
        User userToUpdate = new User();
        userToUpdate.setId(id);
        userToUpdate.setEmail(email);
        userToUpdate.setPassword(password);
        userToUpdate.setUserName(name);

        userDao.update(userToUpdate);
        response.sendRedirect("/user/list");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User userToEdit = userDao.read(id);

        request.setAttribute("user", userToEdit);
        request.getRequestDispatcher("/users/edit.jsp").forward(request, response);

    }
}
