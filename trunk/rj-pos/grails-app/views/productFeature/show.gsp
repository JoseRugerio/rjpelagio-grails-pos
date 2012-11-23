
<%@ page import="org.product.ProductFeature" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productFeature.label', default: 'ProductFeature')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productFeature" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productFeature" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productFeature">
			
				<g:if test="${productFeatureInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="productFeature.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${productFeatureInstance?.product?.id}">${productFeatureInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productFeatureInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="productFeature.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${productFeatureInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productFeatureInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="productFeature.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${productFeatureInstance}" field="brand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productFeatureInstance?.size}">
				<li class="fieldcontain">
					<span id="size-label" class="property-label"><g:message code="productFeature.size.label" default="Size" /></span>
					
						<span class="property-value" aria-labelledby="size-label"><g:fieldValue bean="${productFeatureInstance}" field="size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productFeatureInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="productFeature.picture.label" default="Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productFeatureInstance?.uom}">
				<li class="fieldcontain">
					<span id="uom-label" class="property-label"><g:message code="productFeature.uom.label" default="Uom" /></span>
					
						<span class="property-value" aria-labelledby="uom-label"><g:link controller="uom" action="show" id="${productFeatureInstance?.uom?.id}">${productFeatureInstance?.uom?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productFeatureInstance?.id}" />
					<g:link class="edit" action="edit" id="${productFeatureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
