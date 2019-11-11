<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>Member Form</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-clone "></i> Member</a></li>
		<li class="active">Add</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<div class="box">

		<!-- /.box-header -->
		<div class="box-body">
			<div class="row">
				<!-- left column -->
				<div class="col-md-6">
					<!-- general form elements -->
					<div class="box box-primary">

						<form:form modelAttribute="member" method="post" action="save">
							<div class="box-body">
								<div class="form-group">
									<label for="name">Name Member</label>
									<form:input type="text" path="membername" id="membername"
										class="form-control input-sm" required="required"/>

								</div>
								<div class="form-group">
									<label for="brand">Date of Birth</label>
									<form:input type="date" path="dob" id="dob"
										class="form-control input-sm"  required="required"/>
								</div>
								
								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
						</form:form>
					</div>
					<!-- /.box -->
				</div>
				<!-- /.box-body -->
			</div>
		</div>
	</div>
</section>
<!-- /.content -->

