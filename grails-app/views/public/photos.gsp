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
					<a href="#" data-toggle="modal" data-target="#myModal"><div class="col-sm-4" style="border: solid green 1px;"><img alt="" src="${grailsApplication.config.grails.serverURL + photo.photoURL }">
					<div>${photo.tag }</div></div></a>
				</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>
					<a href="/login/auth"><div class="col-sm-4" style="border: solid green 1px;"><img alt="" src="${grailsApplication.config.grails.serverURL + photo.photoURL }">
						<div>${photo.tag }</div>
					</div></a>
					
				</sec:ifNotLoggedIn>
			<g:if test="${i % 3 == 2 }">
				</div>
			</g:if>
		</g:each>
		
		
		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">Modal Header</h4>
		      </div>
		      <div class="modal-body">
		        <p>Some text in the modal.</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		
		  </div>
		</div>
		
		
	</body>
</html>
