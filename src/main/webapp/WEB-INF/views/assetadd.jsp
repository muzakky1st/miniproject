<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>Asset Form</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-clone "></i> Asset</a></li>
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

						<form:form modelAttribute="asset" method="post" action="save">
							<div class="box-body">
								<div class="form-group">

									<label for="assetnumber">Asset Number</label>
									<form:input type="number" path="assetnumber" id="assetnumber"
										class="form-control input-sm" required="required" />

								</div>

								<div class="form-group">
									<label for="assetname">Asset Name</label>
									<form:input type="text" path="assetname" id="assetname"
										class="form-control input-sm" required="required"/>
								</div>

								<div class="form-group">
									<label class="col-md-3" for="category">Category</label>
										<select  id="category" name="category" class="form-control input-sm" th:field="*{category}" required="required">
											<option value="">Pilih Category</option>
											<option value="Aset Bergerak">Aset Bergerak</option>
											<option value="Aset Tetap">Aset Tetap</option>
										</select>
									</div>
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

