<%@page import="com.entity.Note"%>
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
    <h1>Edit Notes Detail</h1>
    <br>
    
    <%
    int Note_id=Integer.parseInt(request.getParameter("Notes_id"));
    Session s=FactoryProvider.getFactory().openSession();
    Note note=s.get(Note.class, Note_id);
    
    
    %>
    
    <form action="EditServlet" method="post">
    <input type="hidden" name="note_id" value="<%=note.getId()%>">
  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input type="text" required class="form-control"
     id="title" name="title" value="<%=note.getTitle() %>"
     placeholder="Enter Title">
     
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea id="content"
    name="content"
    placeholder="Enter Content"
    class="form-control"
    style="heght:200px;"
    ><%=note.getContent() %>
    
    </textarea>
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Update Note</button>
  </div>
</form>
    </div>
</body>
</html>