<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="shortcut icon" type="image/x-icon" href="resources/images/w_r.JPG" />


    <title>weiver</title>

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

<!-- 글씨 크기 조정 -->
<style type="text/css">
	@media (max-width: 479px){
	.text-resp{
	font-size: 15px}
	}
	@media(min-width: 480px){
	.text-resp{
	font-size:20px}
	}
	
div{
	clear: both;
}
</style>


<!-- 게시판 검색 기능 -->
<script type="text/javascript">
$(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');

    //something is entered in search form
    $('#system-search').keyup( function() {
       var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {
        
            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
});
</script>

<script>
function moveWrite() {
	document.location.href="writeForm.bbs";
}
</script>

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


<script type="text/javascript">
	$("#profileUpdateSuccess").on("click", function() {
		alert("수정이 완료되었습니다.");
	});
</script>
<style type="text/css">
.form-control{
	max-width: 150px;
}

#profile_image{
	height: 150px;
	width: 150px;
}
#info_col{
	max-width: 400px;
}
#updateButton{
	vertical-align: bottom;
}
#introduce{
	max-width: 300px;
}

</style>




</head>

<body>

    <div id="wrapper">

         <!-- Navigation -->
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

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                        <form action="/proj/search.main" method="post">
                            <div class="input-group custom-search-form">
								
	                                <input type="text" class="form-control" placeholder="통합검색" name="target" id="target">
	                                <span class="input-group-btn">
	                                <button class="btn btn-default" type="submit">
	                                	<i class="fa fa-search"></i>
	                                </button>
	                                </span>
                               
                             </div>
                              </form>
                            <!-- /input-group -->
                        </li>
                        <c:forEach items="${category}" var="category">
                        	<li>
                            	<a href="/proj/${category.category_name}.bbs?pageNum=1"><i class="fa  fa-angle-double-right fa-fw"></i> ${category.category_realName}</a>
                        	</li>
                        
                        </c:forEach>
                        
<!--                         <li> -->
<!--                             <a href="/proj/food.bbs"><i class="fa fa-dashboard fa-fw"></i> 공지사항</a> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="/proj/food.bbs"><i class="fa fa-cutlery fa-fw"></i> 음식</a> -->
                           
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="/proj/car.bbs?pageNum=1"><i class="fa fa-car fa-fw"></i> 자동차</a> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="/proj/electronic.bbs"><i class="fa fa-desktop fa-fw"></i> 전자기기<span class="fa arrow"></span></a> -->
<!--                              <ul class="nav nav-second-level"> -->
<!--                                 <li> -->
<!--                                     <a href="/proj/food.bbs">스마트폰</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="/proj/food.bbs">컴퓨터</a> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             /.nav-second-level -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="/proj/game.bbs"><i class="fa fa-gamepad fa-fw"></i> 게임<span class="fa arrow"></span></a> -->
<!--                             <ul class="nav nav-second-level"> -->
<!--                                 <li> -->
<!--                                     <a href="/proj/game.bbs">Panels and Wells</a> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             /.nav-second-level -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a> -->
<!--                             <ul class="nav nav-second-level"> -->
<!--                                 <li> -->
<!--                                     <a href="#">Second Level Item</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#">Second Level Item</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#">Third Level <span class="fa arrow"></span></a> -->
<!--                                     <ul class="nav nav-third-level"> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                     </ul> -->
<!--                                     /.nav-third-level -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             /.nav-second-level -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a> -->
<!--                             <ul class="nav nav-second-level"> -->
<!--                                 <li> -->
<!--                                     <a href="blank.html">Blank Page</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="login.html">Login Page</a> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             /.nav-second-level -->
<!--                         </li> -->
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        
        
        
  
        
        

<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Profile</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-9">
                    <div class="panel panel-default">
<!--                         <div class="panel-heading"> -->
<!--                             Striped Rows -->
<!--                         </div> -->
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form action="/proj/profileUpdate.member" id="profileUpdateSuccess"  method="post">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <colgroup>
                                    	<col width="30%" />
                                    	<col width="*%" id="info_col"/>
                                    </colgroup>	
                                    <tbody>
                                           
                                        <tr height="200px">
                                            
                                            <td colspan="2">
                                            		프로필 사진<br/>
<!-- 												<div  class="col-lg-2 col-md-2"> -->
                                            		<img alt="이미지가 없습니다." 
                                            		src="resources/images/척.jpg" 
                                            		class="img-thumbnail"
                                            		id="profile_image">
<!--                                             	</div> -->
												<br/>
                                            <label>프로필 수정</label>
                                            <input type="file">
                                        	</td>
                                        </tr>
                                        <tr>
                                            <td>아이디</td> <td>${userInfo.member_id}</td>
                                        </tr>
                                        <tr>
                                            <td>비밀번호</td> <td><input class="form-control" type="password" name="member_pw" id="pw"  maxlength="16"></td>
                                        </tr>
                                        <tr>
                                            <td>비밀번호 확인</td> <td><input class="form-control" type="password" id="secondPass"  maxlength="16"></td>
                                        </tr>
                                        <tr>
                                            <td>이름</td> <td>${userInfo.member_name }</td>
                                        </tr>
                                        <tr>
                                            <td>닉네임</td> <td><input class="form-control" type="text" name="member_nickname" id="secondPass"  maxlength="16" value="${userInfo.member_nickname}"></td>
                                        </tr>
                                        <tr>
                                            <td>등급</td> <td>${userInfo.member_grade }</td>
                                        </tr>
                                        <tr>
                                            <td>H.P</td> <td><input class="form-control" type="text" name="member_phonenumber" id="secondPass"  maxlength="16" value="${userInfo.member_phonenumber}"></td>
                                        </tr>
                                        <tr>
                                            <td>E-Mail</td> <td><input class="form-control" type="text" name="member_email" id="secondPass"  maxlength="16" value="${userInfo.member_email}"></td>
                                        </tr>
                                        <tr>
                                            <td>성별</td> <td>${userInfo.member_sex }</td>
                                        </tr>
                                        <tr>
                                            <td>생일</td> <td><input class="form-control" type="text" name="member_birth" id="secondPass"  maxlength="16" value="${userInfo.member_birth}"></td>
                                        <tr>
                                            <td>자기소개(최대 100Bytes)</td> <td><textarea class="form-control" name="member_memo" rows="3" maxlength="100" id="introduce">${userInfo.member_memo}</textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                    <input type="submit"  class="btn btn-primary" id="updateButton" value="수정">
                            </div>
                            </form>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
</div></div>
<!--          div 바디   절취선 ----------------------------------------------------------------------------- -->
    </div>



        
        
        
        
        



<!-- back to TOP -->
		<a id="back-to-top" href="#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Click to return on the top page" data-toggle="tooltip"
			data-placement="left"><span
			class="glyphicon glyphicon-chevron-up"></span></a>

	</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/js/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
<!--     <script src="resources/js/raphael-min.js"></script> -->
<!--     <script src="resources/js/morris.min.js"></script> -->
<!--     <script src="resources/js/morris-data.js"></script> -->

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