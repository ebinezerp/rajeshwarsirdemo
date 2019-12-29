<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function first() {
		let form = document.getElementById("customerForm");
		form.action = "/first";
		form.submit();
	}

	function second() {
		let form = document.getElementById("customerForm");
		form.action = "/second";
		form.submit();
	}
</script>
</head>
<body>

	<spring:form action="" method="post" modelAttribute="customer"
		id="customerForm">
		<div>
			<label>Customer Id</label>
			<spring:input path="id" type="hidden" />
		</div>
		<div>
			<label>Name</label>
			<spring:input path="name" />
		</div>
		<div>
			<label>Email</label>
			<spring:input path="email" />
		</div>
		<div>
			<label>Password</label>
			<spring:input path="password" type="password" />
		</div>
		<div>
			<button type="button" onclick="first()">First</button>
			<br>
			<button type="button" onclick="second()">Second</button>
		</div>
	</spring:form>


</body>
</html>