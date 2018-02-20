package com.profileviewer.jae;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Profile> profiles;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view;
		  getProfiles();
		  request.setAttribute("profiles", profiles);
		  
		  if((String)request.getParameter("profileId")!= null ) {

			  System.out.println(request.getParameter("profileId"));
			  
			  request.setAttribute("profile",getSelectedProfile((String)request.getParameter("profileId")));
			view = request.getRequestDispatcher("WEB-INF/views/viewprofile.jsp");
		  }else {
		  
			view = request.getRequestDispatcher("WEB-INF/views/home.jsp");
			//RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/viewprofile.jsp");
				  
		  }

			view.forward(request, response);
	}
	

	public Profile getSelectedProfile(String id) {
		for(Profile profile : profiles) {
			if(profile.getId().equals(id)) {
				return profile;
			}
		}
		return null;
	}
	
	
	protected void getProfiles() {
		JsonFetcher jsonFetcher = new JsonFetcher();
		profiles = jsonFetcher.getProfiles();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String search =  request.getParameter("search");
		System.out.println(search);
	}

}
