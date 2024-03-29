
<%@ page import="org.product.ProductFeature" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productFeature.label', default: 'ProductFeature')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productFeature" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productFeature" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="productFeature.product.label" default="Product" /></th>
					
						<g:sortableColumn property="color" title="${message(code: 'productFeature.color.label', default: 'Color')}" />
					
						<g:sortableColumn property="brand" title="${message(code: 'productFeature.brand.label', default: 'Brand')}" />
					
						<g:sortableColumn property="size" title="${message(code: 'productFeature.size.label', default: 'Size')}" />
					
						<g:sortableColumn property="picture" title="${message(code: 'productFeature.picture.label', default: 'Picture')}" />
					
						<th><g:message code="productFeature.uom.label" default="Uom" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productFeatureInstanceList}" status="i" var="productFeatureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productFeatureInstance.id}">${fieldValue(bean: productFeatureInstance, field: "product")}</g:link></td>
					
						<td>${fieldValue(bean: productFeatureInstance, field: "color")}</td>
					
						<td>${fieldValue(bean: productFeatureInstance, field: "brand")}</td>
					
						<td>${fieldValue(bean: productFeatureInstance, field: "size")}</td>
					
						<td>${fieldValue(bean: productFeatureInstance, field: "picture")}</td>
					
						<td>${fieldValue(bean: productFeatureInstance, field: "uom")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productFeatureInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
