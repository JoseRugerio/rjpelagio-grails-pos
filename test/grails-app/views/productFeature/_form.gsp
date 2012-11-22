<%@ page import="org.product.ProductFeature" %>



<div class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="productFeature.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${org.product.Product.list()}" optionKey="id" required="" value="${productFeatureInstance?.product?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="productFeature.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${productFeatureInstance?.color}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'brand', 'error')} ">
	<label for="brand">
		<g:message code="productFeature.brand.label" default="Brand" />
		
	</label>
	<g:textField name="brand" value="${productFeatureInstance?.brand}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'size', 'error')} ">
	<label for="size">
		<g:message code="productFeature.size.label" default="Size" />
		
	</label>
	<g:textField name="size" value="${productFeatureInstance?.size}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'picture', 'error')} ">
	<label for="picture">
		<g:message code="productFeature.picture.label" default="Picture" />
		
	</label>
	<input type="file" id="picture" name="picture" />
</div>

<div class="fieldcontain ${hasErrors(bean: productFeatureInstance, field: 'uom', 'error')} required">
	<label for="uom">
		<g:message code="productFeature.uom.label" default="Uom" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="uom" name="uom.id" from="${org.util.Uom.list()}" optionKey="id" required="" value="${productFeatureInstance?.uom?.id}" class="many-to-one"/>
</div>

