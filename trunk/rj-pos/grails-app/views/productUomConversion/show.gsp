
<%@ page import="org.product.ProductUomConversion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productUomConversion.label', default: 'ProductUomConversion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productUomConversion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productUomConversion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productUomConversion">
			
				<g:if test="${productUomConversionInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="productUomConversion.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${productUomConversionInstance?.product?.id}">${productUomConversionInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUomConversionInstance?.uom}">
				<li class="fieldcontain">
					<span id="uom-label" class="property-label"><g:message code="productUomConversion.uom.label" default="Uom" /></span>
					
						<span class="property-value" aria-labelledby="uom-label"><g:link controller="uom" action="show" id="${productUomConversionInstance?.uom?.id}">${productUomConversionInstance?.uom?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUomConversionInstance?.uomTo}">
				<li class="fieldcontain">
					<span id="uomTo-label" class="property-label"><g:message code="productUomConversion.uomTo.label" default="Uom To" /></span>
					
						<span class="property-value" aria-labelledby="uomTo-label"><g:link controller="uom" action="show" id="${productUomConversionInstance?.uomTo?.id}">${productUomConversionInstance?.uomTo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUomConversionInstance?.conversionFactor}">
				<li class="fieldcontain">
					<span id="conversionFactor-label" class="property-label"><g:message code="productUomConversion.conversionFactor.label" default="Conversion Factor" /></span>
					
						<span class="property-value" aria-labelledby="conversionFactor-label"><g:fieldValue bean="${productUomConversionInstance}" field="conversionFactor"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productUomConversionInstance?.id}" />
					<g:link class="edit" action="edit" id="${productUomConversionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
