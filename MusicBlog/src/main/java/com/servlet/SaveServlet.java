package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Artist;
import com.helper.FactoryProvider;


public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// title,content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String birthday = request.getParameter("birthday");
			
			Artist artist = new Artist(title, content, birthday());
//		String title = request.getParameter("title");
//		String content = request.getParameter("content");
//		String birthday= request.getParameter("birthday");
//		
//		
//		Artist artist = new Artist(title,content, birthday());
//		
//	System.out.println(artist.getTitle() + " : " + artist.getContent()+" :" +artist.getBirthday() );
//	
//	}
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		s.save(artist);
		tx.commit();
		s.close();
//		String redirectURL = "index.jsp";
//		response.sendRedirect(redirectURL);

	} catch (Exception e) {
		e.printStackTrace();
	}
}


	private int birthday() {
		// TODO Auto-generated method stub
		return 0;
	}

}
