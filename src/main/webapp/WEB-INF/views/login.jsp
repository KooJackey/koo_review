<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="icon" href="../../favicon.ico">

	<link rel="shortcut icon" type="image/x-icon" href="resources/images/w_r.JPG" />
	
	
	
	
	<!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" media="screen" title="no title">
    <!-- Custom style -->
    <link rel="stylesheet" href="resources/css/style.css" media="screen" title="no title">
	
    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<title>로그인</title>
<script>
function moveJoin() {
	document.location.href="join.member";
}
function moveMain() {
	document.location.href="main.main";
}
</script>
</head>
<body>
<article class="container">
<div class="col-md-12">
<div class="page-header text-center">
	<a href="/proj/main.main"><img class="img-responsive center-block" src="resources/images/main.png" alt="Chania" width="200" height="50"></a>
	<h1>로그인 <small>Login</small></h1>
</div>
<form class="form-horizontal" action="/proj/login.member" method="post">
	<input type="hidden" name="loginPath" value="${loginPath}">
	<div class="form-group">
          <label class="col-sm-3 control-label" for="id">ID</label>
        <div class="col-sm-6">
          <input class="form-control" id="id" name="id" type="text" placeholder="ID" required autofocus>
        </div>
    </div>
    <div class="form-group">
	    <label class="col-sm-3 control-label" for="pw">Password</label>
        <div class="col-sm-6">
          <input class="form-control" id="pw" name="pw" type="password" placeholder="Password" required >
        </div>
    </div>
    <div class="form-group text-center">
	<div class="checkbox">
		<label>
	   		<input type="checkbox" value="remember-me"> Remember me
		</label>
	</div>
		
	<div class="btn-group right-block">
		<button class="btn btn-sm btn-primary" type="submit">Log in</button>
		<button class="btn btn-sm btn-primary" type="button" onclick="moveJoin()">Register</button>
		<button class="btn btn-sm btn-primary" type="button" onclick="moveMain()">Cancel</button>
	</div>
	</div>
</form>
</div>
</article>
</body>
</html>