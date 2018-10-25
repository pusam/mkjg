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
	#thTitle{background-color: #393939; color: white;}
	#search{border: 1px solid #D5D5D5;} 
	</style>
</head>
 <script src="http://localhost:8080/mkjg/assets/js/jquery.js"></script>
<script type="text/javascript">

$(function(){
	$(".aprvl").click(function(){
		var con = confirm("정말 승인하시겠습니까?");
		if(con == true){
		var aprvl=$(this).text();
		var ap_obj=$(this);
		var bseq=$(this).find("input").val();
		$.ajax({
			type : "POST",
            data : {
            	aprvl, bseq
            },
			url : "revAprvl.do",
			dataType:"json",
			success: function(json) { 
				var msg="";
				if(json.data==1){ 
					if(aprvl=='Y'){
					alert("예약 거절"); 
						 msg="N" 
					}else{
					alert("예약 성공"); 
						 msg="Y" 
					}
						 location.href="reservation_list.do";
						 /* ap_obj.html(msg+"<input type='hidden' class='hidRnum' value='"+bseq+"'>");  */
				}else{
					if(aprvl=='Y'){
						alert("예약 거절에 실패했습니다.")
					}else{
						alert("예약 승인에 실패했습니다.")
					}
				}
			},
			error: function(xvr){
				alert("당연안됨 "+ xvr.status + " / " + xvr.statusText)
			}//end 
		});//end ajax 
		}//end if
	});//click
	
	$("#searchClick").click(function(){
		$("#frm").submit();
	});//click
});//ready
</script>
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
            <li class="active">예약목록</li>
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
              <h3>예약목록</h3>
            </div>
            
            <div class="input-append" style="float: right;">
            <form id="frm" name="frm">
            		<select name="status" id="status" style="width: 150px; font-size: 14px;">
						<option value="고객명" ${revStatus eq "고객명" ? "selected" :""}>고객명</option>
						<option value="전화번호" ${revStatus eq "전화번호" ? "selected" :""}>전화번호</option>
						<option value="예약날짜" ${revStatus eq "예약날짜" ? "selected" :""}>예약날짜</option>
					</select>
        	    <input class="span2" id="search" name="search" type="text"  placeholder="이름" value="${revSearch }">
					<button class="btn btn-inverse" type="submit" id="searchClick">검색</button>
			</form>
            </div>
              <table class="table table-hover">
                <thead>
                  <tr style="font-size: 16px;" id="thTitle">
						<th width="50px">번호</th>
						<th width="80px">고객명</th>
						<th width="120px">전화번호</th>
						<th width="120px">애완동물 이름</th>
						<th width="150px">종류</th>
						<th width="130px">예약날짜</th>
						<th width="100px">예약시간</th>
						<th width="100px">예약현황</th>
				</tr>
                </thead>
                <tbody>
                <c:forEach var="rev" items="${rev_list }">
                <tr>
                	<td>${rev.rnum }</td>
                	<td>${rev.pname}</td>
                	<td>${rev.tel}</td>
                	<td>${rev.pet_name}</td>
                	<td>${rev.pet_type}</td>
                	<td>${rev.bdate}</td>
                	<td>${rev.btime}</td>
                	<td><a href="#void" class="aprvl">${rev.aprvl_yn}<input type="hidden" class="hidRnum" value="${rev.bseq }"></a></td>
                </tr>
               	</c:forEach>
                </tbody>
              </table>
            <div class="pagination" style="text-align: center;">
            <ul>
              ${rev_index_list }
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
