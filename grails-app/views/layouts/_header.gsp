<!-- Navigation -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">New Test App</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Photos</a></li>
      <li><a href="#">Boards</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <sec:ifNotLoggedIn>
	      <li><a href="/register/index"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      <li><a href="/login/auth"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </sec:ifNotLoggedIn>
      <sec:ifLoggedIn>
      	<li><a href="/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </sec:ifLoggedIn>
    </ul>
  </div>
</nav>