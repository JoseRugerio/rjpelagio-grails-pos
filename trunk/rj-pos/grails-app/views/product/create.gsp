<%@ page import="org.product.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<a href="#create-product" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/product')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="create-product" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${productInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form action="save">
			<div
				class="fieldcontain ${hasErrors(bean: productInstance, field: 'productCode', 'error')} required">
				<label for="productCode"> <g:message
						code="product.productCode.label" default="Product Code" /> <span
					class="required-indicator">*</span>
				</label>
				<g:textField name="productCode" maxlength="25" required=""
					value="${productInstance?.productCode}" />
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
				<label for="description"> <g:message
						code="product.description.label" default="Description" /> <span
					class="required-indicator">*</span>
				</label>
				<g:textArea name="description" cols="40" rows="5" maxlength="255"
					required="" value="${productInstance?.description}" />
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'status', 'error')} required">
				<label for="category"> <g:message
						code="productCategory.label" default="Product Category" /> <span
					class="required-indicator">*</span>
				</label>
				<g:select id="category" name="category.id"
					from="${org.product.ProductCategory.list()}" optionKey="id"
					required="" value="${categoryInstance?.id}" class="many-to-one" />
			</div>


			<div>
				<h1>
					<g:message code="org.product.ProductFeature.label" />
				</h1>
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'color', 'error')} ">
				<label for="color"> <g:message
						code="productFeature.color.label" default="Color" />

				</label>
				<g:textField name="color" value="${productFeatureInstance?.color}" />
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'brand', 'error')} ">
				<label for="brand"> <g:message
						code="productFeature.brand.label" default="Brand" />

				</label>
				<g:textField name="brand" value="${productFeatureInstance?.brand}" />
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'size', 'error')} ">
				<label for="size"> <g:message
						code="productFeature.size.label" default="Size" />

				</label>
				<g:textField name="size" value="${productFeatureInstance?.size}" />
			</div>
			
			<div
				class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'uom', 'error')} required">
				<label for="uom"> <g:message code="productFeature.uom.label"
						default="Uom" /> <span class="required-indicator">*</span>
				</label>
				<g:select id="uom" name="uom.id" from="${org.util.Uom.list()}"
					optionKey="id" required=""
					value="${productFeatureInstance?.uom?.id}" class="many-to-one" />
			</div>

			<div
				class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'picture', 'error')} ">
				<label for="picture"> <g:message
						code="productFeature.picture.label" default="Picture" /></label> 

				<input type="file" id="picture" name="picture" />
			</div>

			

			<br/>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
