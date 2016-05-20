<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Weiver - 글 수정</title>


	<link rel="shortcut icon" type="image/x-icon" href="resources/images/w_r.JPG" />
	
    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- MetisMenu CSS -->
<!--     <link href="resources/css/metisMenu.min.css" rel="stylesheet"> -->

    <!-- Timeline CSS -->
<!--     <link href="resources/css/timeline.css" rel="stylesheet"> -->

    <!-- Custom CSS -->
    <link href="resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



<!-- back to TOP -->
<style type="text/css">
	.back-to-top {
		cursor: pointer;
		position: fixed;
		bottom: 20px;
		right: 20px;
		display: none;
	}
</style>




</head>
<body>
  <div id="wrapper">
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="main.main"><img src="resources/images/main.png" width="130"></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
            <c:if test="${id == null}">
            	<li class="pull-right"><a href="/proj/login.member"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      		<li class="pull-right"><a href="/proj/join.member"><span class="glyphicon glyphicon-plus"></span> Register</a></li>
	        	
	      	</c:if>
            <c:if test="${id != null}">

                <!-- /.dropdown -->
                <li class="dropdown pull-right">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="profile.member"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.member"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
                </c:if>
            </ul>
            <!-- /.navbar-top-links -->

          
            </div>
            <!-- /.navbar-static-side -->
        </nav>
	<br/><br/>
        
        <div class="container page-wrapper">
			<form action="/proj/update.bbs">
				<input type="hidden" name="pageNum" value="${pageNum}">
				<input type="hidden" name="weiver_no" value="${weiver_no}">
				<table border="2" width="200" align ="center">
					<tr>
						<td>글쓴이 :</td>
						<td>${id}</td>
					</tr>
					<tr>
						<td>제목 :</td>
						<td><input type="text" name="weiver_title"
							value="${article.weiver_title}"></td>
					</tr>
					<tr>
						<td colspan="2">
							<!-- 행 합침 --> <textarea rows="20" cols="50" name="weiver_content">${article.weiver_content}</textarea>
						</td>
					</tr>

					<tr>
						<td><input type="submit" value="수정하기"
							class="btn btn-primary btn-block"></td>
						<td><input type="reset" value="되돌리기"
							class="btn btn-primary btn-block"></td>
					</tr>
				</table>
			</form>
		</div>
        
        
        <br/><br/>
       
<!-- back to TOP -->
		<a id="back-to-top" href="#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Click to return on the top page" data-toggle="tooltip"
			data-placement="left"><span
			class="glyphicon glyphicon-chevron-up"></span></a>

<!-- 	</div> -->
    <!-- /#wrapper -->


</div>
    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/js/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="resources/js/raphael-min.js"></script>
    <script src="resources/js/morris.min.js"></script>
    <script src="resources/js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/sb-admin-2.js"></script>


<!-- back to TOP -->
	<script type="text/javascript">
		$(document).ready(function() {
			$(window).scroll(function() {
				if ($(this).scrollTop() > 50) {
					$('#back-to-top').fadeIn();
				} else {
					$('#back-to-top').fadeOut();
				}
			});
			// scroll body to 0px on click
			$('#back-to-top').click(function() {
				$('#back-to-top').tooltip('hide');
				$('body,html').animate({
					scrollTop : 0
				}, 800);
				return false;
			});

			$('#back-to-top').tooltip('show');

		});
	</script>
</body>
</html>