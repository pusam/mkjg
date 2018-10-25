<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Plato - Clean responsive bootstrap website template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Clean responsive bootstrap website template">
<meta name="author" content="">
<!-- styles -->
<link href="http://localhost:8080/mkjg/assets/css/bootstrap.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/bootstrap-responsive.css" rel="stylesheet">

<link href="http://localhost:8080/mkjg/assets/css/docs.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/flexslider.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/refineslide.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/font-awesome.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/animate.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700"
	rel="stylesheet">

<link href="http://localhost:8080/mkjg/assets/css/style.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/color/default.css" rel="stylesheet">

<!-- fav and touch icons -->
<link rel="shortcut icon" href="http://localhost:8080/mkjg/aassets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css">
	textarea{resize: none}
	</style>
	<script src="http://localhost:8080/mkjg/assets/js/jquery.js"></script>
 <script type="text/javascript">
 $(function(){
	 $("#add").click(function() {
		 var prev_val = $(this).val();
		 if($("#type").val()=='none'){
			 alert("타입선택을해주세요.");
			 return
		 }
			var con = confirm("문의 하시겠습니까?");
			if(con == true){
				location.href="mgr_qna_OK.do";
				$("#frm").submit();
			}else{
				$(this).val(prev_val)
				return
			}
		}); 
	 $("#cancle").click(function() { 
			var con = confirm("목록으로 돌아가시겠습니까?");
			if(con == true){
				location.href="mgr_qna_list.do";
			}else{
				return
			}
		}); 
 });
</script>
</head> 

<body>
	<header>
		<!-- Navbar
    ================================================== -->
		<c:import url="/WEB-INF/views/clinic/common/header.jsp"/>
	</header>
	<!-- Subhead
================================================== -->
<section id="subintro">
    <div class="container">
      <div class="row">
        <div class="span4">
          <h3>mkjg<strong> 문의답변 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">문의답변<span class="divider">/</span></li>
            <li class="active">관리자 문의답변</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
<section id="maincontent">
 <div class="container">
     <div class="row">
     <div class="span12">
		 <section id="tables" class="doc">
            <div class="page-header">
              <h3>문의하기</h3>
            </div>
            <div align="center">
            <form id="frm" name="frm" action="mgr_qna_OK.do">
            <table style="border: 1px solid #A6A6A6; width: 500px;">
            	<tr>
            		<td>
            			<select id="type" name="qtype">
            				<option value="none">----문의타입----</option>
            				<option value="1">홈페이지</option>
            				<option value="2">오류</option>
            				<option value="3">등록</option>
            				<option value="4">기타</option>
            			</select>
            		</td>
            	</tr>
            	<tr>
            		<td>
						<input type="text" placeholder="제목을 입력해주세요" id="title" name="title"/>
            		</td>
            	</tr>
            	<tr>
            		<td>
            			<textarea rows="8" cols="40" style="width: 500px" placeholder="내용을 입력해주세요" id="text" name="text"></textarea>
            		</td>
            	</tr>
            	<tr>
            		<td style="text-align: right;">
            			<input type="button" value="문의" id="add" name="add" class="btn btn-inverse">
            			<input type="button" value="취소" id="cancle" name="cancle" class="btn btn-inverse">
            		</td>
            	</tr>
            </table>
            </form>
            </div>
          </section>
	</div>
	</div>
	</div>
	</section>

	<!-- Footer
 ================================================== -->
	<footer class="footer">
		<c:import url="/WEB-INF/views/clinic/common/footer.jsp"/>
	</footer>

  <script src="http://localhost:8080/mkjg/assets/js/jquery.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/modernizr.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.easing.1.3.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/google-code-prettify/prettify.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/bootstrap.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.prettyPhoto.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/portfolio/setting.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/hover/jquery-hover-effect.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.flexslider.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/classie.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/cbpAnimatedHeader.min.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.refineslide.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.ui.totop.js"></script>

  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/assets/js/custom.js"></script>

</body>

</html>
