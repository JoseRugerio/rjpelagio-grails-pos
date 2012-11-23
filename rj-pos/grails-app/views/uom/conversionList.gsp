<!DOCTYPE html>
<html>
	<head>
	<meta name="layout" content="main">
	<g:set var="entityName"
		value="Uom Conversion" />
	<title><g:message code="UomConversion.label" args="[entityName]" /></title>
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
				<g:message code="UomConversion.label" args="[entityName]" />
			</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<g:hasErrors bean="${productInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${conversionMap}" var="error">
						<li
							<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
								error="${error}" /></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			<g:form action="sa`veConversion">
				<div
					class="fieldcontain ${hasErrors(bean: conversionMap, field: 'uomId', 'error')} required">
					<label for="uom"> 
						<g:message code="Uom.abbrLabel" default="Uom" /> 
					</label>
					<g:select id="uom" name="category.id"
						from="${org.util.Uom.list()}" optionKey="id"
						required="" value="${conversionMap?.id}" class="many-to-one" />
				</div>
				<div
					class="fieldcontain ${hasErrors(bean: conversionMap, field: 'uomId', 'error')} required">
					<label for="uomIdTo"> 
						<g:message code="UomConversion.uomIdTo" default="Uom To" /> 
					</label>
					<g:select id="uomIdTo" name="category.id"
						from="${org.util.Uom.list()}" optionKey="id"
						required="" value="${conversionMap?.id}" class="many-to-one" />
				</div>
				<div class="fieldcontain ${hasErrors(bean: conversionMap, field: 'conversionFactor', 'error')} required">
					<label for="conversionFactor"> 
						<g:message code="UomConversion.conversionFactor" default="Conversion Factor" /> 
					</label>
					<g:textField name="productCode" maxlength="25" required=""
						value="${productInstance?.productCode}" />
				</div>
				<div class="fieldcontain ${hasErrors(bean: conversionMap, field: 'conversionFactor', 'error')} required">
					<label for="conversionFactor"> 
						<g:message code="general.FromDate" default="From Date" /> 
					</label>
				<calendar:datePicker name="date" defaultValue=""/>
				</div>

			</g:form>
		</div>
	</body>
</html>