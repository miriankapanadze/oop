<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.User"%>
<%@page import="Model.Dish"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>





</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
	Integer id = (Integer) request.getSession().getAttribute("id");
	User us = User.getUserById(id);
	String name = us.getName();
	ArrayList<Dish> wishlist = (ArrayList<Dish>) request
			.getSession().getAttribute("wishlist");
	ArrayList<Dish> dishes = (ArrayList<Dish>) request
			.getSession().getAttribute("dishes");
%>
<title><%=name%>'s profile</title>

</head>
<body >
<jsp:include page="Header.jsp" />

 <div id="container">
      <header>
        <nav>
          <ul id="nav">
            <li><a href="Home" class="other">Home</a></li>
            <li><a href=Receipts class="other">All Recipes</a></li>
             <li><a href="SearchByIngredients" class="other">Extended Search</a></li>
            <li><a href=AddNewRecipe class="other">Add New Recipe</a></li>
           
            
             <li><a class="search">
             <div id="tw-form-outer">
		<form action="SearchServlet" method="get" id="tw-form">
			<input type="text" id="tw-input-text" name="name" value='search'
				onfocus="if(this.value=='search'){this.value='';}"
				onblur="if(this.value==''){this.value='search';}" /> <input
				type="submit" id="tw-input-submit" value="" />
		</form>
	</div>
	</nav> </header>
	
	   <hgroup class="intro">
          <h1 class="title2"><%=name%>'s profile</h1>
        </hgroup>
    <footer>
     <br>
      <br>
       <br>
    <div class="border"></div>
    <div class="footer-widget">
      <h4>Wishlist</h4>
		 <ul class="blog">
        <%
		for (int i = 0; i < wishlist.size(); i++) {
			Dish d = wishlist.get(i);
			int dishId=d.getId();
			String dish_name= d.getName();
			%> <li><a href="DishServlet?id=<%=dishId %>"><%=dish_name %></a><br/></li><% 
	
 	}
	
 %>
      </ul>
    </div>
    <div class="footer-widget">
      <h4>My recipes</h4>
      <ul class="blog">
      <%
      for (int i = 0; i < dishes.size(); i++) {
			
			Dish d = dishes.get(i);
			int dishId=d.getId();
			String dish_name= d.getName();
			%> <li><a href="DishServlet?id=<%=dishId %>"><%=dish_name %></a><br/></li><% 
	
 	}
	
 %>
       
        
      </ul>
    </div>
    </footer>
    <br>
	<div class="border2">
	<br></div>
	<br>
    <br />
    <br />
  
    
	
  
   




<!--


	
	<td width="35%" valign="top">

	
	<p>wishlist</p>
	<ul>
	<%
		for (int i = 0; i < wishlist.size(); i++) {
			Dish d = wishlist.get(i);
			int dishId=d.getId();
			String dish_name= d.getName();
			%><li><a href= "DishServlet?id=<%=dishId %>"><%=dish_name %></a><% 
	
 	}
	
 %>
 
 </ul>
  </td>
 <td width="30%" valign="top">
 	<p>User Information</p>
 	<a><%=name %></a>
 </td>
 <td width="35%" valign="top">
 <p>my recipes</p>
	<ul>
	<%
		for (int i = 0; i < dishes.size(); i++) {
			
			Dish d = dishes.get(i);
			int dishId=d.getId();
			String dish_name= d.getName();
			%><li><a href= "DishServlet?id=<%=dishId %>"><%=dish_name %></a><% 
	
 	}
	
 %>
 </ul>-->

</body>
</html>