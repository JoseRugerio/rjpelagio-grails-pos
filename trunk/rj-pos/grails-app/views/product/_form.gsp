<%@ page import="org.product.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productCode', 'error')} required">
	<label for="productCode">
		<g:message code="product.productCode.label" default="Product Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productCode" maxlength="25" required="" value="${productInstance?.productCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="255" required="" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="product.status.label" default="Status" />
	</label>
	<g:select id="status" name="status.id" from="${statusList}" optionKey="id" required="" value="${productInstance?.status?.id}" class="many-to-one"/>
</div>


<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'status', 'error')} required">
	<label for="category">
		<g:message code="productCategory.label" default="Product Category" />
	</label>
	<g:if test="${categoryInstance?.description}">
		<g:fieldValue bean="${categoryInstance}" field="description"/>
	</g:if>
	<g:else>
		<g:select id="category" name="category.id" from="${org.product.ProductCategory.list()}" optionKey="id" required="" value="${categoryInstance?.id}" class="many-to-one"/>
	</g:else>
</div>


