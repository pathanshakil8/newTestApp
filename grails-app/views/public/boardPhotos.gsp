<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sign Up</title>
	</head>
	<body>
		<div style="color: green;"><g:message code="${flash.message }"/></div>
		<g:each in="${photos }" status="i" var="photo">
			<g:if test="${i % 3 == 2 }">
				<div class="row">
			</g:if>
					<div class="col-sm-4" style="border: solid green 1px;"><img alt="" src="${grailsApplication.config.grails.serverURL + photo.photoURL }">
					<div>${photo.tag }</div></div>
			<g:if test="${i % 3 == 2 }">
				</div>
			</g:if>
		</g:each>
		
	</body>
</html>
