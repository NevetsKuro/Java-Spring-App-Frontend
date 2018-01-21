<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>modal</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<div class="modal fade bs-example-modal-sm" tabindex="1" role="dialog" aria-labelledby="myModal" aria-hidden="true" id="onload">

<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">X</button>
			</div>
			<div class="modal-body">Added Successfully!!!</div>
			<div class="modal-footer"><a href="goAEntry" class="btn btn-primary" role="button"></a></div>
		</div>
		</div>
</div>
</div>
<script>
$(document).ready(function(){
$('#onload').modal('show');});
</script>
</body>
</html>