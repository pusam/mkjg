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
		#bseq{background-color: #F5F5F5; height: 25px;}
		#pid{background-color: #F5F5F5; height: 25px;}
		#cl_title{background-color: #F5F5F5; height: 25px;}
		#cl_text{background-color: #F5F5F5; }
	</style>
	
	<script type="text/javascript">
	
	$(function(){
		$("#add").click(function(){
	var chkId =/^[a-z][a-z\d]{3,20}$/
	
	
	if($("#pid").val() == ""){
		alertCenter("#pid", "#Alert", "아이디를 입력해주세요.");
		return;
    }//end if
    
	if($("#bseq").val() == ""){
		alertCenter("#bseq", "#Alert", "고객 예약 번호를 입력해주세요.");
		return;
	}//end if
	
	if($("#cl_title").val() == ""){
		alertCenter("#cl_title", "#Alert", "신고 제목을 입력주세요.");
		return;
	}//end if
    
	if($("#cl_text").val() == ""){
		alertCenter("#cl_text", "#Alert", "신고 사유를 작성해주세요");
		return;
	}//end if
	
	var bseq = $("#bseq").val();
	var pid = $("#pid").val();
	var cl_title = $("#cl_title").val();
	var cl_text = $("#cl_text").val();
	var bln = $("#bln").val();
	
	$.ajax({
        type : 'POST',
        data : {pid, bseq, cl_title, cl_text, bln},
        url : "hog_register_ok.do",
        dataType : "json",
        success : function(json) {
        		location.href="${path}/mkjg/hog_OK.do";
        },// success
        error: function(error){
        	alert("에러");
        }// error
	});//ajax
    
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
                <input class="input-xxlarge" type="text" placeholder="예약번호 B_0000000xxx" id="bseq" name="bseq" value="${view.bseq}" readonly="readonly" maxlength="13"><br/><br/>
            </td>
          </tr>
          
           <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객아이디" id="pid" name="pid" value="${view.pid}" readonly="readonly" maxlength="20"><br/><br/>
            </td>
          </tr>
            <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="제목" id="cl_title" name="cl_title" maxlength="100"><br/><br/>
            </td>
          </tr>
           
           <tr>
          	<td>
                <textarea name="reason" rows="10" cols="35" maxlength="1000" style="width: 530px;" id="cl_text" name="cl_text" placeholder="사유"></textarea>
           </td>
           </tr>
              <tr>
          	<td >
                <input class="hidden" type="text" id="bln" name="bln" value="${view.bln}" readonly="readonly"><br/><br/>
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
