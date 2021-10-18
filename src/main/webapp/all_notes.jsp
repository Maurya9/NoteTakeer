<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <%@include file="all_js_css.jsp"%>
</head>
<body>
 <div class="container">
    <%@include file="navbar.jsp"%>
     <br>
     <h1 class="text-uppercase">All notes:</h1>
     
     <div class="row">
     <div class="col-12">
     <%
     Session ss=FactoryProvider.getFactory().openSession();
     Query q=ss.createQuery("from Note");
     List<Note>list=q.list();
     for(Note note:list)
     {
    	 %>
    	 
    	 <div class="card mt-3">
  <img class="card-img-top m-4" style="max-width:100px" src="img/notepad.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    
    <div class="text-center">
    <a href="DeleteServlet?Notes_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?Notes_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
    </div>
  </div>
</div>
    	 
  <%   	 
    	
     }
     
     %>
     
     
     </div>
     
     </div>
     
     
    </div>
</body>
</html>