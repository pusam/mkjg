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
		#pid{background-color: #F5F5F5; height: 25px;}
		#bseq{background-color: #F5F5F5; height: 25px;}
		#pname{background-color: #F5F5F5; height: 25px;}
		#pet_name{background-color: #F5F5F5; height: 25px;}
		#tel{background-color: #F5F5F5; height: 25px;}
		#wdate{background-color: #F5F5F5; height: 25px;}
		#cl_title{background-color: #F5F5F5; height: 25px;}
		#reason{background-color: #F5F5F5;}
		#refuse{background-color: #F5F5F5;}
	</style>
	
	<script type="text/javascript">
	$(function(){
		$("#back").click(function(){
			history.back();
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
          <h3>MKJG<strong> 신고관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">신고관리<span class="divider">/</span></li>
            <li class="active">신고상세정보</li>
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
              <h3>신고상세정보</h3>
            </div>
          
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
          <tr>
          	<td >
          	<input class="input-xxlarge" type="text" id="pid" name="pid" readonly="readonly" value="${view.pid}">
          	<br/><br/>
            </td>
          </tr>
           <tr>
          	<td >
          	<input class="input-xxlarge" type="text" id="bseq" name="bseq" readonly="readonly" value="${view.cl_seq}">
          	<br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
          	<input class="input-xxlarge" type="text" id="bseq" name="bseq" readonly="readonly" value="${view.bseq}">
          	<br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" id="pname" name="pname" readonly="readonly"  value="${view.pname}">
                <br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" id="pet_name" name="pet_name" readonly="readonly"  value="${view.pet_name}">
                <br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" id="tel" name="tel"readonly="readonly"  value="${view.tel}"><br/><br/>
            </td>
           </tr>
           <tr>
          	<td >
                <input class="input-xlarge" type="text" id="wdate" name="wdate" readonly="readonly" value="${view.wdate}"><br/><br/>
            </td>
           </tr>
            <tr>
          	<td >
                <input class="input-xxlarge" type="text" id="cl_title" name="cl_title" readonly="readonly" value="${view.cl_title}"><br/><br/>
            </td>
           </tr>
           <tr>
          	<td>
                <textarea name="reason" rows="10" cols="35" maxlength="1000" style="width: 530px;" id="reason" readonly="readonly" placeholder="사유">${view.cl_text}</textarea>
           </td>
           </tr>
          <tr>
          <td style="text-align: right;">
          <br/><br/>
           <button type="button" class="btn btn-inverse" id="back">목록</button><br/>
          </td>
          </tr>
                </table>
           </div>
            <div class="controls docs-input-sizes" style="float: left; margin-left: 80px;">
          <table>
          	<tr>
          	<td>
                <textarea name="refuse" rows="15" cols="35" maxlength="1000" style="width: 500px;" id="refuse" name="msg" readonly="readonly">${view.msg}</textarea>
           </td>
          </tr>
          <tr>
          	<td >
                <input type="hidden" id="bseq" name="bseq" readonly="readonly" value="${view.cl_seq}"><br/><br/>
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

  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/assets/js/custom.js"></script>

</body>

</html>
