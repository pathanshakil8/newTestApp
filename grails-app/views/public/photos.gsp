<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sign Up</title>
	</head>
	<body>
		<g:each in="${photos }" status="i" var="photo">
			<g:if test="${i % 3 == 2 }">
				<div class="row">
			</g:if>
				<sec:ifLoggedIn>
					<div class="col-sm-4" style="border: solid green 1px;"><img alt="" src="${grailsApplication.config.grails.serverURL + photo.photoURL }"></div>
				</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>
					<a href="/login/auth"><div class="col-sm-4" style="border: solid green 1px;"><img alt="" src="${grailsApplication.config.grails.serverURL + photo.photoURL }"></div></a>
				</sec:ifNotLoggedIn>
			<g:if test="${i % 3 == 2 }">
				</div>
			</g:if>
		</g:each>
	</body>
</html>
