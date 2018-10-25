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
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<style type="text/css">
		#trPname{background-color: #393939; color: white; height: 30px}
		#trImgAdd{background-color: #393939; color: white; height: 30px}
		table{border: 1px solid #A6A6A6;}
	</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>	
<script type="text/javascript">
	$(function(){
		$("#add").click(function() {
			$("#frm").submit();
		});
		$("#back").click(function() {
			history.back();
		});
	});//ready
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
          <h3>mkjg<strong> 이용관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">이용관리<span class="divider">/</span></li>
            <li class="active">모니터링 등록</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="span12">
         <div class="page-header">
              <h3>모니터링 등록</h3>
            </div>
          <form id="frm" name="frm" enctype="multipart/form-data" action="mtr_add_process.do?bseq=${bseq }" method="POST">
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
          	<tr id="trPname">
          		<td><strong> ${pname } 님의 이용 내역</strong></td>
          	</tr>
          	<tr>
          		<td> 이용날짜 : ${bdate }</td>
          	</tr>
          	<tr>
          		<td> 연락처 : ${tel }</td>
          	</tr>
			<tr>
				<td><textarea rows="10" cols="35" maxlength="1000" style="width: 450px; resize: none;" id="reply" name="reply"  placeholder="내용을 입력해주세요."></textarea></td>
			</tr>
			<tr>
				<td><input type="hidden" value="${bseq }" id="bseq" name="bseq"></td>
			</tr>
          </table>
           </div>
            <div class="controls docs-input-sizes" style="float: left; margin-left: 80px;">
			<div>
			<table class="table">
			    <tbody>
			        <tr id="trImgAdd">
			            <th>이미지 등록 </th>
		            </tr>
		            <tr>
			             <td>
			                <input type="file" name="uploadFile1" id="uploadFile1"/>
			            </td>
   		            </tr>
		            <tr>
			            <td>
			            	<input type="file" name="uploadFile2" id="uploadFile2"/>
			            </td>
		            </tr>
		            <tr>			            
			            <td>
			            	<input type="file" name="uploadFile3" id="uploadFile3"/>
			            </td>
		            </tr>
		            <tr>			            
			            <td>
			            	<input type="file" name="uploadFile4" id="uploadFile4"/>
			            </td>
			        </tr>
			    </tbody>
			</table>
			</div>
			<!-- </form> -->
			<input type="button" value="추가" id="add" class="btn btn-inverse" >
			<input type="button" value="뒤로" id="back" class="btn btn-inverse" >
          </div>
          </form>
          
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
  <!-- daum api 우편번호  -->
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</body>

</html>
