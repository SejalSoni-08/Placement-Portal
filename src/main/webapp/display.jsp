<%@page import="Entitiess.Student"%>
<%@page import="Entitiess.Student"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" type="text/css" href="Front/Master.css">
 --><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
<style>
.mt {
	height: 100px;
	padding: 1em;
	border-radius: 10px;
}

</style>
</head>
<body>
	<div class="header">
	<marquee direction="left" scrollamount="10" class="bg-secondary text-uppercase text-light wel">
		<h5 class="py-2" ><i class="fa-solid fa-hand-point-right"></i>&nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp <i class="fa-solid fa-hand-point-left"></i></h5>
	</marquee>
		<h1 class="text-center mb-3">Student Details</h1>
		
	</div>



	<%
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session s=sf.openSession();
		List<Student> list=s.createCriteria(Student.class).list();
	%>

	<table class="table mt-2">
 	   <thead class="table-dark">
			<th class=""></th>
			<th class="">Id</th>
			<th class=" ">Roll</th>
			<th class="">Name</th>
			<th class="">Email</th>
			<th class="">Phone</th>
			<th class="">Address</th>
			<th colspan="2" class="">Action</th>
		</thead>
		<form action="Email.jsp" method="get">
			<div class="m d-flex justify-content-center">
			<input type="submit" class="btn btn-info"  value="Submit" />
			</div>
			<% for(Student S:list){ %>
			<tr class="">
				<td class=""><input type="checkbox" name="maildata"
					class="check" value="<%=S.getEmail() %>" /></td>				
				<td class=" "><%=S.getId() %></td>
				<td class="  "><%=S.getRoll() %></td>
				<td class=" "><%=S.getName() %></td>
				<td class=" "><%=S.getEmail() %></td>
				<td class=" "><%=S.getPhoneNumber() %></td>
				<td class=" "><%=S.getAddress() %></td>
				<td class=""><a class="btn btn-primary px-4"
					href="Edit.jsp?id=<%=S.getId()%>">Edit</a></td>
				<td class=""><a class="btn btn-danger"
					href="DeleteStudent.jsp?id=<%=S.getId()%>">Delete</a></td>

			</tr>
			<%} %>
		</form>
	</table>

</body>
</html>