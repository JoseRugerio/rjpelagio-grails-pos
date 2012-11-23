<%@ page import="org.product.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/product')}"><g:message
						code="default.home.label" /></a></li>
		</ul>
	</div>
	<div id="list-product" class="content scaffold-list" role="main">
		<h1>
			<g:message code="Reports" />
		</h1>
		<table>
			<thead>
				<tr>
					<th>
						<!--  Filler  -->
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><g:jasperReport jasper="ProductList" format="HTML"
							inline="true" name="Product List" description="Product List"
							height="20px" button-class="create" delimiter="&nbsp;"
							inline="true">
						</g:jasperReport>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>