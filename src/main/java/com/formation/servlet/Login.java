package com.formation.servlet;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.formation.classes.User;
import com.formation.model.UserDAO;
import com.formation.services.Database;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Database.Connect();
		boolean connected=false;
		UserDAO user_dao = new UserDAO();
		boolean msgErrorConnexion=false;
		
		if(request.getParameter("bconnexion")!=null ) {
			String login=request.getParameter("clogin");
			String psw=request.getParameter("cpsw");
			if(user_dao.usernameExist(login) == true) {
				User u = user_dao.getByUsername(login);
				
				User user=user_dao.connexion(login, psw);
				if(user==null) {
					System.out.println("CONNEXION NO");
					msgErrorConnexion=true;
				}else {
					System.out.println("CONNEXION OK");
					HttpSession session = request.getSession( true );
			        session.setAttribute( "userid", user.getId() );
			        session.setAttribute( "username", user.getUsername() );
			        session.setAttribute( "isConnected", true );
					connected=true;
					response.sendRedirect("Index");  
				}
			}
			
			
		}
		if(connected==false) {
			request.getRequestDispatcher( "/WEB-INF/login.jsp" ).forward( request, response );
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
