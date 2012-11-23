
<%@ page import="org.product.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/product')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-product" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="productCode" title="${message(code: 'product.productCode.label', default: 'Product Code')}" />
						<g:sortableColumn property="description" title="${message(code: 'product.description.label', default: 'Description')}" />
						<th><g:message code="product.status.label" default="Status" /></th>
						<th><g:message code="org.product.ProductCategory.label" default="Category" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${productInstance.productId}">${productInstance.productCode}</g:link></td>
						<td>${productInstance.description}</td>
						<td>${productInstance.status}</td>	
						<td>${productInstance.category}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div class="pagination">
				<g:paginate total="${productInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
