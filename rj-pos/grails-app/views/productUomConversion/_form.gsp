<%@ page import="org.product.ProductUomConversion" %>



<div class="fieldcontain ${hasErrors(bean: productUomConversionInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="productUomConversion.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${org.product.Product.list()}" optionKey="id" required="" value="${productUomConversionInstance?.product?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productUomConversionInstance, field: 'uom', 'error')} required">
	<label for="uom">
		<g:message code="productUomConversion.uom.label" default="Uom" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="uom" name="uom.id" from="${org.util.Uom.list()}" optionKey="id" required="" value="${productUomConversionInstance?.uom?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productUomConversionInstance, field: 'uomTo', 'error')} required">
	<label for="uomTo">
		<g:message code="productUomConversion.uomTo.label" default="Uom To" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="uomTo" name="uomTo.id" from="${org.util.Uom.list()}" optionKey="id" required="" value="${productUomConversionInstance?.uomTo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productUomConversionInstance, field: 'conversionFactor', 'error')} required">
	<label for="conversionFactor">
		<g:message code="productUomConversion.conversionFactor.label" default="Conversion Factor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="conversionFactor" value="${fieldValue(bean: productUomConversionInstance, field: 'conversionFactor')}" required=""/>
</div>

