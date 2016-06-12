<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sign Up</title>
	</head>
	<body>
		<g:each in="${boards }" status="i" var="board">
			<div class="row">
			<a href="boardPhotos?id=${board.id }"><div class="col-sm-5" style="margin: 0 auto; text-align: center;">${board.name }</div></a>
			</div>
		</g:each>
	</body>
</html>
