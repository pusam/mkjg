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
<link	href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700"rel="stylesheet">
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
	#thTitle{background-color: #393939; color: white;}
	#search{border: 1px solid #D5D5D5;} 
	</style>
<script src="http://localhost:8080/mkjg/assets/js/jquery.js"></script>
 <script type="text/javascript">
 $(function(){
	$("#searchClick").click(function() {
		$("#frm").submit();
	});
	$(".ansView").click(function() {
	var con = "";
	var aprvl=$(this).find(".rstatus").val();
	var qgc_seq=$(this).find(".qgc_seq").val();
	if(aprvl=='N'){
	 con = confirm("답변이 등록되지 않았습니다. 답변을 등록하시겠습니까?");
	}else{
		con = confirm("답변을 확인하시겠습니까?");
	}
	if(con==true){
	location.href="user_qna_answer_view.do?rstatus="+aprvl+"&qgc_seq="+qgc_seq;
	}else{
		return
	}//end if
	});//click
 });//ready
 </script>
<!-- modal -->
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
            <li class="active">사용자 문의 답변</li>
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
              <h3>사용자 문의 답변</h3>
            </div>
            
            <div class="input-append" style="float: right;">
            <form id="frm" name="frm">
            		<select name="status" id="status" style="width: 150px; font-size: 14px;">
						<option value="고객명" ${user_qna_status eq "고객명" ? "selected" :""}>고객명</option>
						<option value="타입" ${user_qna_status eq "타입" ? "selected" :""}>타입</option>
						<option value="문의날짜" ${user_qna_status eq "문의날짜" ? "selected" :""}>문의날짜</option>
						<option value="답변여부" ${user_qna_status eq "답변여부" ? "selected" :""}>답변여부</option>
					</select>
        	    <input class="span2" id="search" name="search"  type="text" value="${user_qna_search }">
					<button class="btn btn-inverse" type="submit" id="searchClick">검색</button>
			</form>
            </div>
              <table class="table table-hover">
                <thead>
                  <tr style="font-size: 16px;" id="thTitle">
						<th width="50px">번호</th>
						<th width="120px">고객명</th>
						<th width="150px">제목</th>
						<th width="150px">타입</th>
						<th width="150px">문의일자</th>
						<th width="130px">답변여부</th>
				</tr>
                </thead>
                <tbody>
                	<c:forEach var="uq" items="${user_qna_list }">
                  	<tr>
                  		<td>${uq.rnum }</td>
                  		<td>${uq.pname }</td>
                  		<td>${uq.qtitle }</td>
                  		<td>${uq.qtype }</td>
                  		<td>${uq.qdate }</td>
                  		<form id ="frm2" name="frm2" action="user_qna_answer_view.do" method="GET">
                  		<td><a href="#void" class="ansView">${uq.rstatus }
                  		<input type="hidden" value="${uq.rstatus }" id="rstatus" name="rstatus" class="rstatus">
                  		<input type="hidden" value="${uq.qgc_seq }" id="qgc_seq" name="qgc_seq" class="qgc_seq"></a></td>
                  		</form>
					</tr> 
					</c:forEach>
                </tbody>
              </table>
            <div class="pagination" style="text-align: center;">
            <ul>
            	${user_qna_index }
            </ul>
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
