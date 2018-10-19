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
		#hName{background-color: #F5F5F5; height: 30px;}
		#cNum{background-color: #F5F5F5; height: 30px;}
		#cName{background-color: #F5F5F5; height: 30px;}
		#phone{background-color: #F5F5F5; height: 30px;}
		#treatment{background-color: #F5F5F5; height: 30px;}
		#open{background-color: #F5F5F5; height: 30px;}
		#close{background-color: #F5F5F5; height: 30px;}
		#post{background-color: #F5F5F5; height: 30px;}
		#addr1{background-color: #F5F5F5; height: 30px;}
		#addr2{background-color: #F5F5F5; height: 30px;}
		#intro{background-color: #F5F5F5; height: 270px;}
	</style>
	
	<script type="text/javascript">
	$(function(){
		$("#modi").click(function(){
			var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			var storePhone = /^\d{2,3}-\d{3,4}-\d{4}$/;
			var time = /^\d{2}:\d{2}$/;
			
			if($("#phone").val() == ""){
				alertCenter("#phone", "#Alert", "핸드폰 번호를 입력해주세요.");
				return;
			}else if( !chkPhone.test( $("#phone").val() )){
				alertCenter("#phone", "#Alert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
				return;
            }//end else if
			
			if($("#treatment").val() == ""){
				alertCenter("#treatment", "#Alert", " 진료과목을 입력해주세요");
				return;
			}//end if
			
			if($("#open").val() == "" || $("#close").val() == ""){
				alertCenter("#close", "#Alert", " 운영시간을 입력해주세요.");
				return;
			}else if( !time.test( $("#open").val() )){
				alertCenter("#close", "#Alert", "오픈시간을 확인해주세요. (ex: 12:00)");
				return;
            }else if( !time.test( $("#close").val() )){
				alertCenter("#close", "#Alert", "클로즈시간을 확인해주세요. (ex: 20:00)");
				return;
            }//end else if
			
			if($("#post").val() == ""){
				alertCenter("#post", "#Alert", "우편번호를 입력해주세요");
				return;
			}else if( !chkPost.test( $("#post").val() )){
				alertCenter("#post", "#Alert", "우편번호를 확인해주세요");
				return;
	   	 }//end else if
	   	 
			if($("#addr1").val() == ""){
				alertCenter("#addr1", "#Alert", "주소를 입력해주세요");
				return;
			}//end if
	   	 
			if($("#addr2").val() == ""){
				alertCenter("#addr2", "#Alert", "상세주소를 입력해주세요");
				return;
			}//end if
			
			if($("#intro").val() == ""){
				alertCenter("#intro", "#Alert", " 소개글을 입력해주세요.");
				return;
			}//end if
			
		});//click
		}); //ready
		
		function alertCenter(id, alertId, msg){
			$(id).focus();
			$(alertId).html(msg);
			$(alertId).css("color","#FF0000");
			$(alertId).fadeOut(1000).fadeIn(1000).fadeOut(1000).fadeIn(1000).fadeOut(1000)
			$(alertId).focus();
		}//alertCenter

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
            <li class="active">이용 내역 상세 보기</li>
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
              <h3>이용 내역 상세 보기</h3>
            </div>
          
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객번호" id="hName" name="hName"><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객명" id="cNum" name="cNum"><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="전화번호" id="cNum" name="cNum"><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="애완동물 이름" id="cName" name="cName"><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="동물종류" id="phone" name="phone" maxlength="13"><br/>
            </td>
           </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="나이/개월" id="phone" name="phone" maxlength="13"><br/>
            </td>
           </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="방문날짜" id="phone" name="phone" maxlength="13"><br/>
            </td>
           </tr>
           <tr>
          	<td>
                <input class="input-xxlarge" type="text" placeholder="방문시간" id="post" name="post"><br/>
           </td>
           </tr>
          </table>
           </div>
            <div class="controls docs-input-sizes" style="float: left; margin-left: 80px;">
          <table>
          	<tr>
          		<td>
          		특이사항
          		</td>
          	</tr>
	         <tr>
		         <td>
		         <textarea name="intro" rows="10" cols="25" maxlength="1000" style="width: 450px"></textarea>
		         </td>
	         </tr>
          	<tr>
          		<td>
          		진단내역
          		</td>
          	</tr>
	         <tr>
		         <td>
		         <textarea name="intro" rows="10" cols="25" maxlength="1000" style="width: 450px"></textarea>
		         </td>
	         </tr>
          </table>
                <div style="float: right;">
            	<button type="button" class="btn btn-inverse" id="add">돌아가기</button>
              </div>
          </div>
          
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
