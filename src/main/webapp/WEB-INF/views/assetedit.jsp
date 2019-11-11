<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<section class="content-header">
	<h1>Asset Form For Update</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-book"></i> Home</a></li>
		<li class="active">Edit</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<div class="box">

		<div class="form-container">

			<form:form method="POST" modelAttribute="asset"
				class="form-horizontal" action="/asset/update">

				<div class="box-body">

					<div class="form-group">
						<label class="col-md-3" for="assetid">Asset ID</label>
						<div class="col-md-7">
							<form:input type="number" required="required" readonly="readonly" path="assetid" id="assetid"
								class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="assetid" class="help-inline" />
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3" for="assetnumber">Asset Number</label>
						<div class="col-md-7">
							<form:input type="text" required="required" path="assetnumber"
							 id="assetnumber" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="assetnumber" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3" for="assetname">Asset Name</label>
						<div class="col-md-7">
							<form:input type="text" required="required" path="assetname"
							 id="assetname" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="assetnumber" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3" for="category">Category</label>
						<div class="col-md-7">
						<select id="category" class="form-control" name="category"  th:field="*{category}" required="required">
						<option value="">Pilih Category</option>
						<option value="Aset Bergerak">Aset Bergerak</option>
						<option value="Aset Tetap">Aset Tetap</option>
					</select>
					</div>
				</div>
				
				</div>

				<div class="box-footer">
					<input type="submit" value="Submit" class="btn btn-primary btn-sm">
				</div>


			</form:form>
		</div>
	</div>
</section>
