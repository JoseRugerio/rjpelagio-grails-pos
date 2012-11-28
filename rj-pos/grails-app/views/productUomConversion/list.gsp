
<%@ page import="org.product.ProductUomConversion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productUomConversion.label', default: 'ProductUomConversion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productUomConversion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productUomConversion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="productUomConversion.product.label" default="Product" /></th>
					
						<th><g:message code="productUomConversion.uom.label" default="Uom" /></th>
					
						<th><g:message code="productUomConversion.uomTo.label" default="Uom To" /></th>
					
						<g:sortableColumn property="conversionFactor" title="${message(code: 'productUomConversion.conversionFactor.label', default: 'Conversion Factor')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productUomConversionInstanceList}" status="i" var="productUomConversionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productUomConversionInstance.id}">${fieldValue(bean: productUomConversionInstance, field: "product")}</g:link></td>
					
						<td>${fieldValue(bean: productUomConversionInstance, field: "uom")}</td>
					
						<td>${fieldValue(bean: productUomConversionInstance, field: "uomTo")}</td>
					
						<td>${fieldValue(bean: productUomConversionInstance, field: "conversionFactor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productUomConversionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
