package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;
import com.helper.FactoryProvider;


public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			int noteid=Integer.parseInt(request.getParameter("note_id"));
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tr=s.beginTransaction();
			Note note = s.get(Note.class, noteid);
			
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			response.sendRedirect("all_notes.jsp");
			tr.commit();
			s.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
