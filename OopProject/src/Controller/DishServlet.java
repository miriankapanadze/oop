package Controller;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Dish;
import Model.User;

/**
 * Servlet implementation class DishServlet
 */
@WebServlet("/DishServlet")
public class DishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DishServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=(String)request.getSession().getAttribute("name");
		int id=Integer.parseInt(request.getParameter("id"));
		User us=User.getUserById(User.getIdByName(name));
		int isAdmin=0;
		if(us.isAdmin()) isAdmin=1;
		request.setAttribute("isAdmin", isAdmin);
		int contains=0;
		if(us.wishListContains(id))contains=1;
		request.setAttribute("contains", contains);
		RequestDispatcher dispatch = request.getRequestDispatcher("Dish.jsp"+"?id="+id);
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
