<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	background-image:linear-gradient(#464fff,#787eff);
	min-height:100vh;
}
.form {
  background-color: #fff;
  box-shadow: 0 10px 60px rgb(218, 229, 255);
  border: 1px solid rgb(159, 159, 160);
  border-radius: 20px;
  padding: 2rem .7rem .7rem .7rem;
  text-align: center;
  font-size: 1.125rem;
  max-width: 350px;
}

.form-title {
  color: #000000;
  font-size: 1.8rem;
  font-weight: 500;
}

.form-paragraph {
  margin-top: 10px;
  font-size: 0.9375rem;
  color: rgb(105, 105, 105);
}

.drop-container {
  background-color: #fff;
  position: relative;
  display: flex;
  gap: 10px;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 10px;
  margin-top: 2.1875rem;
  border-radius: 10px;
  border: 2px dashed rgb(171, 202, 255);
  color: #444;
  cursor: pointer;
  transition: background .2s ease-in-out, border .2s ease-in-out;
}

.drop-container:hover {
  background: rgba(0, 140, 255, 0.164);
  border-color: rgba(17, 17, 17, 0.616);
}

.drop-container:hover .drop-title {
  color: #222;
}

.drop-title {
  color: #444;
  font-size: 20px;
  font-weight: bold;
  text-align: center;
  transition: color .2s ease-in-out;
}

#file-input {
  width: 350px;
  max-width: 100%;
  color: #444;
  padding: 2px;
  background: #fff;
  border-radius: 10px;
  border: 1px solid rgba(8, 8, 8, 0.288);
}

#file-input::file-selector-button {
  margin-right: 20px;
  border: none;
  background: #262ffc;
  padding: 10px 20px;
  border-radius: 10px;
  color: #fff;
  cursor: pointer;
  transition: background .2s ease-in-out;
}

#file-input::file-selector-button:hover,.bbtn:hover {
  background: #262ffc;
}

.ai{
font-size:32px !important;
color:#262ffc !important;
}

.bbtn{
  background: #262ffc;
  color:white;
  border:none;

}

</style>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	%>

	<!-- <div class="for1 pt-4">
		<div class="for2">
			<div class="for">
				<form action="UploadServletts" method="post" class="bttn red"
					enctype="multipart/form-data">
	 								   	<h6 class="text-light">Drag and Drop your site here</h6>

					<input type="file" class="file2" name="excelFile"
						accept=".xlsx, .xls"> <input type="submit"
						class="btn btn-primary" value="Upload">
				</form>
			</div>
		</div>
	</div>
	<div class="carousel-item active">
				      <img src="IMG/c2.jpg" height="500px" class="d-block w-100" alt="...">
				    </div>
	<a href="display.jsp">Display</a>
	<a href="login.jsp">login</a>
	 -->
 
	<form action="UploadServletts" method="post" class="form"
					enctype="multipart/form-data">
  <span class="form-title">Upload your file</span>
  <p class="form-paragraph">
      File should be an Excel
    </p>
   <label for="file-input" class="drop-container">
  <span class="drop-title">Drop files here</span>
  <i class="fa-solid fa-cloud-arrow-up ai"></i>
  or
<!--   <input type="file" accept="image/*" required="" id="file-input">
 -->  <input type="file" class="file2" id="file-input" name="excelFile" accept=".xlsx, .xls"> 
  
  <div class="d-flex flex-wrap">
		<input type="submit" class="btn btn-primary bbtn mx-2" value="Upload">
  		<a href="display.jsp" class="btn btn--primary bbtn">Display</a>    
  </div>
  
</label>
</form>
	
</body>
</html>