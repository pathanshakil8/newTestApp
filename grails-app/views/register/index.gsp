<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sign Up</title>
	</head>
	<body>
		<div class="container">
		  <h2>Sign Up</h2>
		  <div class="col-sm-6">
		  <form class="form-horizontal" role="form" action="register">
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="email">Username:</label>
		      <div class="col-sm-10">
		        <input type="email" class="form-control" id="email" placeholder="Enter email" name="username">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="pwd">Password:</label>
		      <div class="col-sm-10">          
		        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
		      </div>
		    </div>
		    <div class="form-group">        
		      <div class="col-sm-offset-2 col-sm-10">
		        <button type="submit" class="btn btn-default">Submit</button>
		      </div>
		    </div>
		  </form>
		  </div>
		  <div style="color: red;"><g:message code="${flash.message }"/></div>
		</div>
	</body>
</html>
