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
	#startDate{background-color: #F5F5F5;}
	#endDate{background-color: #F5F5F5;}
	#appendedInputButton{background-color: #F5F5F5;}
	</style>
	<script src="http://localhost:8080/mkjg/assets/js/jquery.js"></script>
 <script type="text/javascript">
 $(function(){
	$("#searchClick").click(function() {
		$("#frm").submit();
	});
	
	$("#add").click(function() {
		location.href="mgr_qna_answer.do";
	});
	
	$(".ansView").click(function() {
		var aprvl = $(this).text();
		var qua_seq=$(this).find("input").val();
		var msg = "";
		if(aprvl=='N'){
		 msg = "답변이 등록되지 않았습니다. 확인하시겠습니까?";
		}else{
			msg = "답변을 확인하시겠습니까?";
		}
		if(confirm(msg) == true){
			location.href="mgr_qna_answer_view.do";
			$("#frm2").submit();
		}else{
			return
		}
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
          <h3>mkjg<strong> 문의답변 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">문의답변<span class="divider">/</span></li>
            <li class="active">관리자 문의 답변</li>
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
              <h3>관리자 문의 답변</h3>
            </div>
            <div class="input-append" style="float: right;">
            <form id="frm" name="frm">
            		<select name="status" id="status" style="width: 150px; font-size: 14px; margin-right: 70px">
						<option value="문의타입" ${mgr_qna_status eq "문의타입" ? "selected" :""}>문의타입</option>
						<option value="문의자" ${mgr_qna_status eq "문의자" ? "selected" :""}>문의자</option>
						<option value="문의날짜" ${mgr_qna_status eq "문의날짜" ? "selected" :""}>문의날짜</option>
						<option value="답변유무" ${mgr_qna_status eq "답변유무" ? "selected" :""}>답변유무</option>
					</select>
        	    <input class="span2" id="search" name="search"  type="text" value="${mgr_qna_search }">
					<button class="btn btn-inverse" type="submit" id="searchClick">검색</button>
			</form>
            </div>
              <table class="table table-hover">
                <thead>
                  <tr style="font-size: 16px;">
						<th width="50px">번호</th>
						<th width="120px">제목</th>
						<th width="120px">문의타입</th>
						<th width="120px">문의자</th>
						<th width="120px">문의날짜</th>
						<th width="150px">문의 내역 답변 유무</th>
				</tr>
                </thead>
                <tbody>
                	<c:forEach var="mq" items="${mgr_qna_list}">
					<tr>
						<td>${mq.rnum}</td>
						<td>${mq.qtitle}</td>
						<td>${mq.qtype}</td>
						<td>${mq.wid}</td>
						<td>${mq.qdate}</td>
						<form id = "frm2" name="frm2" action="mgr_qna_answer_view.do" method="POST">
						<td><a href="#void" class="ansView">${mq.rstatus}
						<input type="hidden" value="${mq.qua_seq}" id="qua_seq" name="qua_seq"></a></td>
						</form>
					</tr>
					</c:forEach>
                </tbody>
              </table>
            <div class="pagination" style="text-align: center;">
            <ul>
              ${mgr_qna_index}
            </ul>
          </div>
             <div style="float: right;">
            	<button type="button" class="btn btn-inverse" id="add" name="add">문의하기</button>
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
