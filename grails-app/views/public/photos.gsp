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
				<sec:ifLoggedIn>
					<a href="#" data-toggle="modal" data-target="#myModal" data-id="${photo.id }" class="photoId"><div class="col-sm-4" style="border: solid green 1px;"><img alt="" src="${grailsApplication.config.grails.serverURL + photo.photoURL }">
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
		        <h4 class="modal-title">Select Board</h4>
		      </div>
		      <form method="post" action="/public/savePhotoToBoard">
		      <div class="modal-body">
		      <div class="row">
		        <div class="col-sm-5">
		        	<label for="sel1">Existing Board</label>
				      <select class="form-control" name="boardId">
				      	<g:each in="${boards }">
				      		<option value="${it.id }">${it.name }</option>
				      	</g:each>
				      </select>
				      <input type="hidden" name="photoId" value="" id="photoId">
		        </div>
		        <div class="col-sm-5"><input type="button" data-toggle="modal" data-target="#addNewBoard" class="btn btn-default" value="Add New Board" style="margin-top: 25px; margin-left: 100px;"></div>
		      </div></div>
		      <div class="modal-footer">
		        <button type="submit" class="btn btn-default">Submit</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		      </form>
		    </div>
		  </div>
		</div>
		
		
		
		<!-- Modal -->
		<div id="addNewBoard" class="modal fade" role="dialog">
		  <div class="modal-dialog modal-sm">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">Enter Board Name</h4>
		      </div>
		      <form method="post" action="/public/saveBoard">
		      <div class="modal-body">
		      <div class="row">
		        <div class="col-sm-6">
		        	<input type="text" class="form-control" name="boardName">
		        </div>
		      <div class="modal-footer">
		        <button type="submit" id="submitForm" class="btn btn-default">Submit</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		
		  </div>
		  </form>
		</div>
		</div>
		</div>
		
	</body>
</html>
