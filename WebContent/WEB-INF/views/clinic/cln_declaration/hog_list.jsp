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
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
   
	<script type='text/javascript'>
	
	$(function(){
			$("#add").click(function(){
				location.href="${path}/mkjg/hog_register.do";
			});		
		
			$('.input-daterange').datepicker({
  				 autoclose: true,
  				 format:'yyyy-mm-dd'
			});
		});
	
	function list(page){
		 location.href="${path}/mkjg/hog_list.do?curPage="+page;
		}
	
</script>
	
	
	<style type="text/css">
	#startDate{background-color: #F5F5F5;}
	#endDate{background-color: #F5F5F5;}
	#appendedInputButton{background-color: #F5F5F5;}
	</style>
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
            <li class="active">목록</li>
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
              <h3>목록</h3>
            </div>
            <div class="input-daterange input-group" id="datepicker" style="position: relative; top: 38px; left: 100px; width: 500px;" >
   				 <input type="text" class="input-sm form-control" name="startDate"  id="startDate" placeholder="시작날짜" style="display: inline-block;"/>
    		    &nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;
  			     <input type="text" class="input-sm form-control" name="endDate"  id="endDate" placeholder="끝날짜" style="display: inline-block;"/>
			</div>
			<div id="searchContent" style="float: right;">
            		<select name="status" id="status" style="width: 150px; font-size: 14px; margin-right: 70px">
						<option selected="selected" style="line-height: 25px; border: 1px solid #6093e7; margin-bottom: 20px; height: 28px; border-radius: 3px"> 등록완료</option>
						<option>처리대기</option>
						<option>관리자거절</option>
					</select>
        	    <input class="span2" id="searchID" type="text"  placeholder="아이디" style="background-color: #f5f5f5; height: 23px;">&nbsp;&nbsp;&nbsp;
				<button class="btn btn-inverse" type="submit" id="searchbtn" style="margin-bottom: 10px;">검색</button>
            </div>
              <table class="table table-hover">
                <thead>
                  <tr style="font-size: 16px;">
						<th width="50px">번호</th>
						<th width="80px">고객아이디</th>
						<th width="120px">고객명</th>
						<th width="120px">애완동물 이름</th>
						<th width="150px">전화번호</th>
						<th width="130px">최근 이용 날짜</th>
						<th width="100px">처리결과</th>
				</tr>
                </thead>
                <tbody>
	                <c:forEach var="row" items="${map.list}">
							<tr>
								<td>${row.num}</td>
								<td>${row.pid}</td>
								<td><a href="${path}/mkjg/hog_info.do?cl_seq=${row.cl_seq}">${row.pname}</a></td>
								<td>${row.pet_name}</td>
								<td>${row.tel}</td>
								<td>${row.bdate}</td>
								<td>${row.cl_status}</td>
							</tr>
					</c:forEach> 
                </tbody>
              </table>
            <div class="pagination" style="text-align: center;">
            <ul>
              <li>
              <c:if test="${map.pageMaker.curBlock>1}">
             	 <a href="javascript:list('${map.pageMaker.prevPage}')">Prev</a>
              </c:if>
              </li>
             <c:forEach var="num" begin="${map.pageMaker.blockBegin}" end="${map.pageMaker.blockEnd}">
              	<li>
                  <a href="javascript:list('${num}')">${num}</a>
               </li>
               </c:forEach>
              <li>
              <c:if test="${map.pageMaker.curBlock <= map.pageMaker.totBlock}">
             	 <a href="javascript:list('${map.pageMaker.nextPage}')">Next</a>
              </c:if>
              </li>
            </ul>
          </div>
             <div style="float: right;">
            	<button type="button" class="btn btn-inverse" id="add">추가</button>
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
	 <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/assets/js/custom.js"></script>

</body>

</html>
