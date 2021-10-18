<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp"%>
    <br>
    <h1>Please Add Notes Details</h1>
    <br>
    
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input type="text" required class="form-control"
     id="title" name="title"
     placeholder="Enter Title">
     
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea id="content"
    name="content"
    placeholder="Enter Content"
    class="form-control"
    style="heght:200px;"
    >
    
    </textarea>
  </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add Note</button>
  </div>
</form>
    </div>
</body>
</html>