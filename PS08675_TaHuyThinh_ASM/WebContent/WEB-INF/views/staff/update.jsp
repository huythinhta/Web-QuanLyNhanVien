<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script
	src="https://reactiveraven.github.io/jqBootstrapValidation/js/jqBootstrapValidation.js"></script>
<script
	src="https://unpkg.com/sweetalert2@7.1.3/dist/sweetalert2.all.js"></script>
<script src="https://kit.fontawesome.com/2705abeb1d.js"
	crossorigin="anonymous"></script>
<style>
body{
background-image: url('images/login.jpg'); 
}

.main-div {
background-image: linear-gradient(to top, #9795f0 0%, #fbc8d4 100%);
	border: 3px solid black; 
  	border-radius: 15px 30px 30px;  
	width: 60%; 
}
</style>
</head>
<body>
	<div class="container-fluid d-flex justify-content-center">
		<div class="row mt-5 d-flex justify-content-center main-div rounded-lg">
			<form method="post" enctype="multipart/form-data" action="admin/staff/update.htm"
				name="submitForm" class="main-form needs-validation"
					style="width: 90%" novalidate>
				<div class="form-group my-3 text-center" data-plugin="formMaterial">
					<h3>
						<c:choose>
							<c:when test="${empty message}"><s:message code="staff.update"/></c:when>
							<c:otherwise>
								${message}
								<c:remove var="message" />
							</c:otherwise>
						</c:choose>
					</h3>
				</div>
				<div class="row">
					<div class="col-6">
						<div class="form-group my-3" data-plugin="formMaterial">
							<label class="form-control-label" for="inputText"><s:message code="staff.id"/></label>
							<input type="text" class="form-control validated"
								id="inputText" name="id" placeholder="Staff ID" value="${staff.id}" readonly required>
							<div class="invalid-feedback">Invalid Depart ID</div>
						</div>

						<div class="form-group mt-3 mb-2" data-plugin="formMaterial">
							<label class="form-control-label" for="inputDepart"><s:message code="staff.name"/></label>
							<input type="text" class="form-control validated"
								id="inputDepart" name="name" placeholder="Staff Name" value="${staff.name}" required>
							<div class="invalid-feedback">Invalid Name</div>
						</div>

						<div class="form-group my-3">
							<label class="form-control-label" for="inputDepart"><s:message code="staff.gender"/></label>
							<div class="form-group p-2 bg-white rounded"
								data-plugin="formMaterial">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="customRadioInline1"
										name="gender" value="true" class="custom-control-input" ${staff.gender?"checked":""}>
									<label class="custom-control-label" for="customRadioInline1"><s:message code="staff.gender.male"/></label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="customRadioInline2"
										name="gender" value="false" class="custom-control-input" ${staff.gender?"":"checked"}>
									<label class="custom-control-label" for="customRadioInline2"><s:message code="staff.gender.female"/></label>
								</div>
							</div>
						</div>

						<div class="form-group my-3">
							<label class="form-control-label" for="inputDepart"><s:message code="staff.birthday"/></label>
							<input type="date" class="form-control validated"
								id="inputDepart" name="birthday" placeholder="Depart Name" value="${staff.birthday}" required>
							<div class="invalid-feedback">Invalid Date</div>
						</div>
						
						<div class="form-group my-3">
							<label class="form-control-label" for="inputDepart">EMAIL</label>
							<input type="email" class="form-control validated"
								id="inputDepart" name="email" placeholder="Email" value="${staff.email}" required>
							<div class="invalid-feedback">Invalid Email</div>
						</div>
					</div>
					<div class="col-6">
						<div class="form-group my-3" data-plugin="formMaterial">
							<label class="form-control-label" for="inputText"><s:message code="staff.phone"/></label>
							<input type="text" class="form-control validated"
								id="inputText" name="phone" placeholder="Phone" value="${staff.phone}" required>
							<div class="invalid-feedback">Invalid Phone</div>
						</div>

						<div class="form-group my-3" data-plugin="formMaterial">
							<label class="form-control-label" for="inputDepart"><s:message code="staff.salary"/></label>
							<input type="text" class="form-control validated"
								id="inputDepart" name="salary" placeholder="Salary" value="<fmt:formatNumber
								value="${staff.salary}" type="NUMBER" groupingUsed = "false" />" required>
							<div class="invalid-feedback">Invalid Salary</div>
						</div>

						<div class="form-group my-3">
							<label class="form-control-label"><s:message code="staff.depart.id"/></label> <select
								class="form-control" name="depart.id" id="inputDepart">
								<c:forEach var="depart" items="${listDepart}">
									<option value="${depart.id.trim()}" ${depart.id.trim() == staff.depart.id.trim()?"selected":""}>${depart.name}</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group my-3">
							<input type="hidden" name="photo" value="${staff.photo}"> 
							<label class="form-control-label"><s:message code="staff.photo"/></label>
							<div class="custom-file">
								<input type="file" class="custom-file-input" name="file" id="customFile">
								<label class="custom-file-label" for="customFile">Choose
									file</label>
							</div>
						</div>
					</div>
				</div>

				<button class="btn btn-primary mb-3" type="submit">
					<i class="fas fa-plus"></i> <s:message code="staff.update"/>
				</button>
				<button class="btn btn-danger mb-3"
					onclick="window.location.href='admin/staff/show-staff.htm'"
					type="button">
					<i class="fas fa-sign-out-alt"></i> <s:message code="global.button.cancel"/>
				</button>
			</form>
		</div>
	</div>
	<script>
        var form = document.querySelector('.needs-validation');

        form.addEventListener('submit', function (event) {
            event.preventDefault();
            event.stopPropagation();
            if (form.checkValidity() === true) {
                alert()
            }
            form.classList.add('was-validated');
        })

        function alert(aaaa) {
            swal({
                title: "Are you sure?",
                text: "You want to update this Staff?",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, Create it!",
                cancelButtonText: "No, cancel plx!"
            }).then((result) => {
                if (result.value) {
                	document.submitForm.submit();
                } else {
                    swal("Cancelled", "This staff is safe :)", "error");
                }
            });
        }

        $(".custom-file-input").on("change", function() {
        	  var fileName = $(this).val().split("\\").pop();
        	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        	});
    </script>
</body>

</html>