<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="Uom Conversion" />
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
		<g:hasErrors bean="${conversionMap}">
			<ul class="errors" role="alert">
				<g:eachError bean="${conversionMap}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form action="saveConversion">
			<div
				class="fieldcontain ${hasErrors(bean: conversionMap, field: 'uomId', 'error')} required">
				<label for="uom"> <g:message code="Uom.abbrLabel"
						default="Uom" />
				</label>
				<g:select id="uom" name="uom" from="${org.util.Uom.list()}"
					optionKey="id" required="" value="${conversionMap?.uom}"
					class="many-to-one" />
			</div>
			<div
				class="fieldcontain ${hasErrors(bean: conversionMap, field: 'uomId', 'error')} required">
				<label for="uomIdTo"> <g:message
						code="UomConversion.uomIdTo" default="Uom To" />
				</label>
				<g:select id="uomIdTo" name="uomIdTo"
					from="${org.util.Uom.list()}" optionKey="id" required=""
					value="${conversionMap?.uomIdTo}" class="many-to-one" />
			</div>
			<div
				class="fieldcontain ${hasErrors(bean: conversionMap, field: 'conversionFactor', 'error')} required">
				<label for="conversionFactor"> <g:message
						code="UomConversion.conversionFactor" default="Conversion Factor" />
				</label>
				<g:textField id="conversionFactor" name="conversionFactor" maxlength="25" required=""
					value="${conversionMap?.conversionFactor}" />
			</div>
			<div
				class="fieldcontain ${hasErrors(bean: conversionMap, field: 'conversionFactor', 'error')} required">
				<label for="conversionFactor"> <g:message
						code="general.FromDate" default="From Date" />
				</label>
				<calendar:datePicker id="fromDate" name="fromDate" defaultValue="" />
			</div>

			<br />
			<fieldset class="buttons">
				<g:submitButton name="save" class="save"
					value="${message(code: 'default.button.save.label', default: 'Save')}" />
			</fieldset>
	
			<br/>
			<div id="list-conversions" class="content scaffold-list" role="main">
				<table>
					<thead>
						<tr>
							<g:sortableColumn property="uom"
								title="${message(code: 'UomConversion.uomId', default: 'Uom')}" />
							<g:sortableColumn property="uomIdTo"
								title="${message(code: 'UomConversion.uomIdTo', default: 'Uom Id To')}" />
							<th><g:message code="UomConversion.conversionFactor" default="Status" /></th>
							<th><g:message code="general.FromDate" default="Category" /></th>
							<th><g:message code="general.ThruDate" default="Category" /></th>
						</tr>
					</thead>
					<tbody>
						<g:each in="${conversionList}" status="i" var="item">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td>${item.uom}</td>
								<td>${item.uomIdTo}</td>
								<td>${item.conversionFactor}</td>	
								<td>${item.fromDate}</td>
								<td>${item.thruDate}</td>
							</tr>
						</g:each>
					</tbody>
				</table>
			</div>

		</g:form>
	</div>
</body>
</html>