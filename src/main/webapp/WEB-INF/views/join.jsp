<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/w_r.JPG" />
    
    
    <title>회원가입</title>
    
<!--     생일 -->
    <script src="resources/birth/jquery-birthday-picker.min.js"></script>
    
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="resources/css/style.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script>
	  function moveMain() {
		document.location.href="main.main";
	}
  </script>
  </head>
  <body>


      <article class="container">

        <div class="col-md-12">
        <div class="page-header">
        <a href="/proj/main.main">
        <img class="img-responsive center-block" src="resources/images/main.png" alt="Chania" width="200" height="50">
        </a>
    	    	<h1>회원가입 <small>Register</small></h1>
    	    	
     
        </div>
        <form role="form" class="form-horizontal" action="/proj/join.member" method="POST">
        <div class="form-group">
          <label class="col-sm-3 control-label" for="id">아이디</label>
        <div class="col-sm-6">
          <input class="form-control" id="id" name="member_id" type="text" placeholder="아이디">
          <div id="idCheckStatus"></div>
        </div>
        </div>

        <div class="form-group">
          <label class="col-sm-3 control-label" for="pw">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" id="pw" name="member_pw" type="password" placeholder="비밀번호">
        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="secondPass">비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" id="secondPass" type="password" placeholder="비밀번호 확인">
                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
                <div id="pwCheckStatus"></div>
             </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="name">이름</label>
          <div class="col-sm-6">
            <input class="form-control" id="name" name="member_name" type="text" placeholder="이름">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="email">이메일</label>
        <div class="col-sm-6">
          <input class="form-control" id="email" name="member_email" type="email" placeholder="이메일">
        </div>
        </div>
        
        
<!--         <div class="form-group"> -->
<!--             <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label> -->
<!--               <div class="col-sm-6"> -->
<!--                 <div class="input-group"> -->
<!--                   <input type="tel" class="form-control" id="inputNumber" placeholder="- 없이 입력해 주세요" /> -->
<!--                   <span class="input-group-btn"> -->
<!--                     <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button> -->
<!--                   </span> -->
<!--                 </div> -->
<!--               </div> -->
<!--         </div> -->
<!--         <div class="form-group"> -->
<!--             <label class="col-sm-3 control-label" for="inputNumberCheck">인증번호 확인</label> -->
<!--           <div class="col-sm-6"> -->
<!--             <div class="input-group"> -->
<!--               <input class="form-control" id="inputNumberCheck" type="text" placeholder="인증번호"> -->
<!--               <span class="input-group-btn"> -->
<!--                 <button class="btn btn-success" type="button">인증번호 확인<i class="fa fa-edit spaceLeft"></i></button> -->
<!--               </span> -->
<!--             </div> -->
<!--             <p class="help-block">전송된 인증번호를 입력해주세요.</p> -->
<!--           </div> -->
<!--         </div> -->
 	    
 	    
 	    <div class="form-group">
          <label class="col-sm-3 control-label" for="sex">성별</label>
        <div class="col-sm-6">
          <select id="sex" name="member_sex" class="form-control">
            	<option value="male">male</option>
            	<option value="female">female</option>
          </select>
        </div>
        </div>
        
        
        
        
        
        
        
        
 	    <div class="form-group">
          <label class="col-sm-3 control-label" for="birth">생년월일</label>
        <div class="col-sm-6">
          <input class="form-control" id="birth" name="member_birth" type="text" placeholder="생년월일">
        </div>
        </div>        
        
        
        <div class="form-group">
          <label class="col-sm-3 control-label" for="memo">자기소개</label>
        <div class="col-sm-6">
          <textarea class="form-control" id="memo" name="member_memo" type="text" placeholder="자기소개"></textarea>
        </div>
        </div> 
        
<!--           <div class="form-group"> -->
<!--               <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label> -->
<!--             <div class="col-sm-6" data-toggle="buttons"> -->
<!--               <label class="btn btn-warning active"> -->
<!--                 <input id="agree" type="checkbox" autocomplete="off" checked> -->
<!--                   <span class="fa fa-check"></span> -->
<!--               </label> -->
<!--               <a href="#">이용약관</a> 에 동의 합니다. -->
<!--             </div> -->
<!--           </div> -->


        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="button" onclick="moveMain()">가입취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
        </form>
          <hr>
        </div>
      </article>
    
    
    
    
    
    
    
    
      

    <script>
    	$("#default-settings").birthdayPicker();
    </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/joinMember.js"></script>
    <script src="resources/js/passwordCheck.js"></script>
  </body>
</html>
