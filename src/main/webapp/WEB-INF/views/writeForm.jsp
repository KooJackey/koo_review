<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    
    
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/w_r.JPG" />

    <title>글 좀 쓰니?</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- MetisMenu CSS -->
    <link href="resources/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="resources/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="resources/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keywords"
	content="opensource rich wysiwyg text editor jquery bootstrap execCommand html5" />
<meta name="description"
	content="This tiny jQuery Bootstrap WYSIWYG plugin turns any DIV into a HTML5 rich text editor" />
<link rel="apple-touch-icon"
	href="//mindmup.s3.amazonaws.com/lib/img/apple-touch-icon.png" />
<link rel="shortcut icon"
	href="http://mindmup.s3.amazonaws.com/lib/img/favicon.ico">
<link href="resources/editor/prettify.css" rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css"
	rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="resources/editor/jquery.hotkeys.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
<script src="resources/editor/prettify.js"></script>
<link href="resources/editor/index.css" rel="stylesheet">
<script src="resources/editor/bootstrap-wysiwyg.js"></script>

<script> // 자바 스크립트 시작
// function writeTitle() {
// 	var content = document.getElementById('title').innerHTML;
// 	post_to_url("/proj/write.bbs", {'weiver_title': title});
// }

function writeContent() {
	var content = document.getElementById('editor').innerHTML;
	//alert($("#fname").val());
	
	post_to_url("/proj/write.bbs", {'weiver_content': content, 'weiver_title': $("#title").val()});
	
}

function post_to_url(path, params) {
    method = "POST";
    var form = document.createElement("form");
    form.setAttribute("method", method);
    form.setAttribute("action", path);
    
    for(var key in params) {
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", key);
        hiddenField.setAttribute("value", params[key]);
        
        form.appendChild(hiddenField);
    }
    document.body.appendChild(form);
    form.submit();
}
/*
$(function(){
	$("#writeForm").on("submit",function(){		
		$.ajax({	
			url:"/proj/write.bbs",
// 			data{}에서는 EL을 ""로 감싸야함..그외에는 그냥 사용
			data:{				
				weiver_title : $("#title").val(),
				weiver_content : $("#editor").val()
			},
// 			beforeSend : function(){
// 				alert("시작전");
// 			},
			complete: function(){
				alert("comment가 정성적으로 입력되었습니다");
			},
			success:function(data){							
				$("#commentContent").val("");
				showHtml(data,1);				
			}					
		}); 
	});	
});*/
</script>
</head>
<body>

<form action="/proj/write.bbs" method="post" id="writeForm">
<!-- ------------------------------------------------------ -->
<!-- 절취선------------------------------------------------------ -->
<!-- ------------------------------------------------------ -->

<div class="container">
		
		<div class="hero-unit">
<!-- 				<div class="form-group"> -->
<!-- 					<label for="inputlg">제 목</label>  -->
<!-- 					<input class="form-control input-lg" id="inputlg" type="text"> -->
<!-- 				</div> -->
				<form class="form-horizontal" role="form">
					<div class="form-group form-group-lg">
						<label class="col-sm-1 control-label" for="lg"><h4>제 목</h4></label>
						<div class="col-sm-11">
							<input class="form-control" type="text" id="title">
						</div>
					</div>
				</form>
				<!-- 				<input type="text" class="form-control"  id="title" name="title" placeholder="제목"> -->
		
			<hr />

			<div class="btn-toolbar" data-role="editor-toolbar"
				data-target="#editor">
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i
						class="icon-font"></i><b class="caret"></b></a>
					<ul class="dropdown-menu">
					</ul>
				</div>
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown"
						title="Font Size"><i class="icon-text-height"></i>&nbsp;<b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
						<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
						<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
					</ul>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
						class="icon-bold"></i></a> <a class="btn" data-edit="italic"
						title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a> <a
						class="btn" data-edit="strikethrough" title="Strikethrough"><i
						class="icon-strikethrough"></i></a> <a class="btn"
						data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
						class="icon-underline"></i></a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i
						class="icon-list-ul"></i></a> <a class="btn"
						data-edit="insertorderedlist" title="Number list"><i
						class="icon-list-ol"></i></a> <a class="btn" data-edit="outdent"
						title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
					<a class="btn" data-edit="indent" title="Indent (Tab)"><i
						class="icon-indent-right"></i></a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="justifyleft"
						title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
					<a class="btn" data-edit="justifycenter"
						title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
					<a class="btn" data-edit="justifyright"
						title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
					<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
						class="icon-align-justify"></i></a>
				</div>
				<div class="btn-group">
					<a class="btn dropdown-toggle" data-toggle="dropdown"
						title="Hyperlink"><i class="icon-link"></i></a>
					<div class="dropdown-menu input-append">
						<input class="span2" placeholder="URL" type="text"
							data-edit="createLink" />
						<button class="btn" type="button">Add</button>
					</div>
					<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i
						class="icon-cut"></i></a>

				</div>

				<div class="btn-group">
					<a class="btn" title="Insert picture (or just drag & drop)"
						id="pictureBtn"><i class="icon-picture"></i></a> <input
						type="file" data-role="magic-overlay" data-target="#pictureBtn"
						data-edit="insertImage" />
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i
						class="icon-undo"></i></a> <a class="btn" data-edit="redo"
						title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
				</div>
				<input type="text" data-edit="inserttext" id="voiceBtn"
					x-webkit-speech="" name="editor">
			</div>

			<div id="editor"></div>
		
			<input type="button" class="btn btn-sm btn-primary" onclick="writeContent()" value="글쓰기">
		</div>	
		
		
		
		</div>
		</form>
		<script>
			$(function() {
				function initToolbarBootstrapBindings() {
					var fonts = [ 'Serif', 'Sans', 'Arial', 'Arial Black',
							'Courier', 'Courier New', 'Comic Sans MS',
							'Helvetica', 'Impact', 'Lucida Grande',
							'Lucida Sans', 'Tahoma', 'Times',
							'Times New Roman', 'Verdana' ], fontTarget = $(
							'[title=Font]').siblings('.dropdown-menu');
					$
							.each(
									fonts,
									function(idx, fontName) {
										fontTarget
												.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'
														+ fontName
														+ '</a></li>'));
									});
					$('a[title]').tooltip({
						container : 'body'
					});
					$('.dropdown-menu input').click(function() {
						return false;
					}).change(
							function() {
								$(this).parent('.dropdown-menu').siblings(
										'.dropdown-toggle').dropdown('toggle');
							}).keydown('esc', function() {
						this.value = '';
						$(this).change();
					});

					$('[data-role=magic-overlay]').each(
							function() {
								var overlay = $(this), target = $(overlay
										.data('target'));
								overlay.css('opacity', 0).css('position',
										'absolute').offset(target.offset())
										.width(target.outerWidth()).height(
												target.outerHeight());
							});
					if ("onwebkitspeechchange" in document
							.createElement("input")) {
						var editorOffset = $('#editor').offset();
						$('#voiceBtn').css('position', 'absolute').offset(
								{
									top : editorOffset.top,
									left : editorOffset.left
											+ $('#editor').innerWidth() - 35
								});
					} else {
						$('#voiceBtn').hide();
					}
				}
				;
				function showErrorAlert(reason, detail) {
					var msg = '';
					if (reason === 'unsupported-file-type') {
						msg = "Unsupported format " + detail;
					} else {
						console.log("error uploading file", reason, detail);
					}
					$(
							'<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'
									+ '<strong>File upload error</strong> '
									+ msg + ' </div>').prependTo('#alerts');
				}
				;
				initToolbarBootstrapBindings();
				$('#editor').wysiwyg({
					fileUploadError : showErrorAlert
				});
				window.prettyPrint && prettyPrint();
			});
		</script>
		
		</body>
<!-- 		<a href="http://210.119.12.240"><img -->
<!-- 			style="position: absolute; top: 0; right: 0; border: 0;" -->
<!-- 			src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" -->
<!-- 			alt="옆동네 가기"></a> -->
<!-- 		<div id="fb-root"></div> -->
</html>

<!-- 공------------------------------------------------------ -->
<!-- 백------------------------------------------------------ -->