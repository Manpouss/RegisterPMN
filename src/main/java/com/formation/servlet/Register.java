package com.formation.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.formation.classes.User;
import com.formation.model.UserDAO;
import com.formation.services.Database;

import utils.Utils;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/Inscription")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Database.Connect();
		Utils utils = new Utils();
		UserDAO u_dao = new UserDAO();
		String user_info[] = new String[9];
		ArrayList<User> users = u_dao.getAll();
		System.out.println(users.size());
		
		boolean saisie_valid = false, registered=false;
		boolean checkFName ,error_fname= false, checkLName ,error_lname= false, checkMail, error_mail = false, checkTel, error_tel = false, check_psw, 		error_psw = false, error_equals_psw = false;
		
		if(request.getParameter("bregister")!=null ) {
			String lname=request.getParameter("ilname");
			String fname=request.getParameter("ifname");
			String mail=request.getParameter("imail");
			String dateOfBirth=request.getParameter("idateofbirth");
			String tel=request.getParameter("itel");
			String sexe = request.getParameter("sexe");
			String psw=request.getParameter("ipsw");
			String pswConf=request.getParameter("ipswConf");
			String country = request.getParameter("icountry");
			String[] values = request.getParameterValues("console");
			try {
				checkLName = utils.check_validite(lname, request, "ilname", saisie_valid, error_lname,"lname",user_info, 0);
				if(checkLName==true) {
					user_info[0] = lname;
				}else{error_lname = true;}
				
				checkFName = utils.check_validite(fname, request, "ifname", saisie_valid, error_fname,"fname",user_info, 1);
				if(checkFName==true) {
					user_info[1] = fname;;
				}else{
					error_fname = true;}
				
				checkMail = utils.check_saisie("mail", mail);
				if(checkMail == false) {
					error_mail = true;
				}else if(checkMail==true) {
					user_info[2] = mail;
				}
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date strToDate = sdf.parse(dateOfBirth);
				sdf.applyPattern("dd/MM/yyyy");
				String newDateOfBirth = sdf.format(strToDate);
				user_info[3] = newDateOfBirth;
				
				checkTel = utils.check_validite(tel, request, "itel", saisie_valid, error_tel,"tel",user_info, 4);
				
				if(checkTel==true) {
					user_info[4] = tel;
				}else{
					error_tel = true;}
				
				if(sexe.equals("man")) {
					user_info[5] = "Homme";
                }else if(request.getParameter("sexe").equals("woman")) {
                	user_info[5] = "Femme";
                }
				
				check_psw = utils.check_saisie("psw", psw);
				if(check_psw == false) {
					error_psw = true;
				}else if(check_psw == true) {
					if(!pswConf.equals(psw)) {
						error_equals_psw = true;
					}else {
						user_info[6] = psw;
					}
				}
				user_info[7] = country;
				
				String list;
				for(int i = 0; i < values.length; i++) {
					
					user_info[8] = values[i];
				}
				
			}catch(Exception ex) {
				ex.printStackTrace();
			}
			for(int i = 0; i < user_info.length; i++) {
				System.out.println(user_info[i]);
			}
			for(int i = 0; i < values.length; i++) {
				System.out.println(values[i]);
			}
			
			User user = new User(user_info[0], user_info[6]);
			u_dao.save(user);
			HttpSession session = request.getSession( true );
			
	        session.setAttribute( "userInfo", user_info );
	        session.setAttribute( "values", values);
	        registered = true;
			response.sendRedirect("DisplayUserInfo");
		}
		if(registered == false) {
		this.getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
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
