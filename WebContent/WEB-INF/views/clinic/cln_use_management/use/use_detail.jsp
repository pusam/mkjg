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
		#bseq{background-color: #F5F5F5; height: 30px;}
		#pname{background-color: #F5F5F5; height: 30px;}
		#tel{background-color: #F5F5F5; height: 30px;}
		#pet_name{background-color: #F5F5F5; height: 30px;}
		#pet_type{background-color: #F5F5F5; height: 30px;}
		#pet_age{background-color: #F5F5F5; height: 30px;}
		#bdate{background-color: #F5F5F5; height: 30px;}
		#btime{background-color: #F5F5F5; height: 30px;}
		#msg{background-color: #F5F5F5; height: 300px;}
	</style>
	
	<script type="text/javascript">

	
	$(function(){
		$("#add").click(function(){
			var bseq = document.getElementById("bseq").value;
			var msg = document.getElementById("reason").value;
			var pid = document.getElementById("pid").value; 
			$.ajax({
		            type : 'POST',
		            data : {msg, pid, bseq}, 
		            url : "use_detail_reason.do",
		            dataType : "json",
		            success : function(json) {
		            		location.href="${path}/mkjg/use_detail_OK.do";
		            },// success
		            error: function(error){
		            	alert("에러");
		            }// error
			});//ajax
		});//click
		
		$("#modi").click(function(){
			var bseq = document.getElementById("bseq").value;
			var msg = document.getElementById("reason").value;
			$.ajax({
            type : 'POST',
	            data : {msg, bseq},
	            url : "use_detail_reason_modi.do",
	            dataType : "json",
	            success : function(json) { 
	            		location.href="${path}/mkjg/use_detail_modi_OK.do";
	            },// success
	            error: function(error){
	            	alert("에러");
	            }// error
			});//ajax
		});//click
		
		$("#back").click(function(){
			history.back();
		});	
		
		$("#hogAdd").click(function(){
			var bseq = document.getElementById("bseq").value;
			location.href="${path}/mkjg/hog_register.do?bseq="+bseq; 
		});
		
		$("#mtrAdd").click(function(){
			$("#frm").submit();
		});		
		
		}); //ready

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
          
          <form id="frm" name="frm" action="mtr_add.do" method="POST">
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객번호" readonly="readonly" id="bseq" name="bseq" value="${view.bseq}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객아이디" readonly="readonly" id="pid" name="pid" value="${view.pid}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="고객명" readonly="readonly" id="pname" name="pname" value="${view.pname}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="전화번호" readonly="readonly" id="tel" name="tel" value="${view.tel}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="애완동물 이름" readonly="readonly" id="pet_name" name="pet_name" value="${view.pet_name}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="동물종류" id="phone" readonly="readonly" name="pet_type" value="${view.pet_type}"><br/><br/>
            </td>
           </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="나이/개월" id="phone" readonly="readonly" name="pet_age" value="${view.pet_age}"><br/><br/>
            </td>
           </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="방문날짜" id="phone" readonly="readonly" name="bdate" value="${view.bdate}"><br/><br/>
            </td>
           </tr>
           <tr>
          	<td>
                <input class="input-xxlarge" type="text" placeholder="방문시간" id="post" readonly="readonly" name="btime" value="${view.btime}"><br/><br/>
           </td>
           </tr>
            <tr>
          <td style="text-align: right;">
            	<button type="button" class="btn btn-inverse" id="hogAdd">신고</button>
          <c:if test="${view.msg==null}">
             	<button type="button" class="btn btn-inverse" id="add">등록</button>
          </c:if>
          <c:if test="${view.msg!=null}">
             	<button type="button" class="btn btn-inverse" id="modi">수정</button>
          </c:if>
            	<button type="button" class="btn btn-inverse" id="mtrAdd">모니터링등록</button>
            	<button type="button" class="btn btn-inverse" id="back">목록</button>
          </td>
          </tr>
          </table>

           </div>
            <div class="controls docs-input-sizes" style="float: left; margin-left: 80px;">
       	   <table>
          	<tr>
          		<td>
          		 <textarea name="msg" rows="15" cols="35" maxlength="1000" style="width: 500px;" id="reason" placeholder="진료내역">${view.msg}</textarea>
          		</td>
          	</tr>
          	<tr>
          	<td>
                <input class="hidden" type="text" id="bln" readonly="readonly" name="bln" value="${view.bln}">
           </td>
          	<td>
                <input type="hidden" id="mseq" readonly="readonly" name="mseq" value="${mseq}">
           </td>
           </tr>
          </table>
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

</body>

</html>
