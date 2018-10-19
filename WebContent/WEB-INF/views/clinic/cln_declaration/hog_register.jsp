<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Plato - Clean responsive bootstrap website template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Clean responsive bootstrap website template">
<meta name="author" content="">

<!-- styles -->

<link href="http://localhost:8080/mkjg/assets/css/bootstrap.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/bootstrap-responsive.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link href="http://localhost:8080/mkjg/assets/css/docs.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/flexslider.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/refineslide.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/font-awesome.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/animate.css" rel="stylesheet">


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
 	<link rel="stylesheet" href="http://localhost:8080/mkjg/assets/css/bootstrap-datepicker3.min.css">

	<style type="text/css">
		#cusId{background-color: #F5F5F5; height: 25px;}
		#cusName{background-color: #F5F5F5; height: 25px;}
		#petName{background-color: #F5F5F5; height: 25px;}
		#phone{background-color: #F5F5F5; height: 25px;}
		#date{background-color: #F5F5F5; height: 25px;}
		#reason{background-color: #F5F5F5;}
	</style>
	
	<script type="text/javascript">
	
	$(function(){
		
	    $("#date").datepicker({
	        calendarWeeks: true,
	        todayHighlight: true,
	        autoclose: true,
	        format: 'yyyy-mm-dd'
	    });  
	    
		$("#add").click(function(){
	var chkId =/^[a-z][a-z\d]{3,20}$/
	var chkName=/^[가-힝]{2,10}$/
	var chkPetName=/^[가-힝a-z]{1,10}$/
	var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	
	
	if($("#cusId").val() == ""){
		alertCenter("#cusId", "#Alert", "아이디를 입력해주세요.");
		return;
	}else if( !chkId.test( $("#cusId").val() )){
		alertCenter("#cusId", "#Alert", "아이디는 영문 소문자 혹은 소문자와 숫자 혼합으로 3~20자 입력해주세요");
		return;
    }//end else if
    
	if($("#cusName").val() == ""){
		alertCenter("#cusName", "#Alert", "이름을 입력해주세요.");
		return;
	}else if( !chkName.test( $("#cusName").val() )){
		alertCenter("#cusName", "#Alert", "이름은 최소 2자 한글로만 작성해주세요.");
		return;
    }//end else if
    
	if($("#petName").val() == ""){
		alertCenter("#petName", "#Alert", "애완동물의 이름을 입력해주세요.");
		return;
	}else if( !chkPetName.test( $("#petName").val() )){
		alertCenter("#petName", "#Alert", "애완동물의 이름을 확인해주세요");
		return;
    }//end else if
	
	if($("#phone").val() == ""){
		alertCenter("#phone", "#Alert", "핸드폰 번호를 입력해주세요.");
		return;
	}else if( !chkPhone.test( $("#phone").val() )){
		alertCenter("#phone", "#Alert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
		return;
    }//end else if
    
	if($("#reason").val() == ""){
		alertCenter("#reason", "#Alert", "사유를 작성해주세요");
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
          <h3>MKJG<strong> 신고관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">신고관리<span class="divider">/</span></li>
            <li class="active">신고등록</li>
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
              <h3>신고등록</h3>
            </div>
          
          <div class="controls docs-input-sizes" style="margin-left: 300px;">
          <table>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객아이디" id="cusId" name="cusId" maxlength="20"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객명" id="cusName" name="cusName" maxlength="10"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="애완동물이름" id="petName" name="petName" maxlength="10"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td>
                <input class="input-xxlarge" type="text" placeholder="전화번호" id="phone" name="phone" maxlength="13"><br/><br/>
            </td>
           </tr>
           <tr>
          	<td>
               <input type="text" class="form-control" id="date" name="id" placeholder="날짜" readonly="readonly" style="display: inline-block;">
               <br/><br/>
            </td>
           </tr>
           <tr>
          	<td>
                <textarea name="reason" rows="10" cols="35" maxlength="1000" style="width: 530px;" id="reason" placeholder="사유"></textarea>
           </td>
           </tr>
           <tr>
           <td>
           <span id="Alert" style="font-size: 20px;"></span>
           </td>
           </tr>
          
          <tr>
          <td style="text-align: center;">
          <br/><br/>
           <button type="button" class="btn btn-inverse" id="add">신청</button>
           <button type="button" class="btn btn-inverse" id="back">목록</button><br/>
          </td>
          </tr>
                </table>
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
  <script type='text/javascript' src="http://localhost:8080/mkjg/assets/js/bootstrap-datepicker.min.js"></script>
  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/assets/js/custom.js"></script>

</body>

</html>
