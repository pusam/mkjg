<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Plato - Clean responsive bootstrap website template</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Clean responsive bootstrap website template">
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
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
		$("#pwSearch").click(function() {
            var search_data = {
            		cId : $("#cId").val(),
                	cName : $("#cName").val(),
                	cBirth : $("#cBirth").val(),
                	cPhone : $("#cPhone").val(),
                	check : $("input[type=radio][name=check]:checked").val()
                };
			$.ajax({
				type : "POST",
	            data : search_data,
				url : "pw_search_process.do",
				success: function(data) {
					if(data=="" || data == null){
						alert('사업자 및 직원여부, 아이디, 이름, 생년월일, 연락처를 확인해주세요.');
					}else{
						alert('임시 비밀번호는' +data +'입니다. 패스워드를 변경해주세요.')
					}
				},
				error: function(xvr){
					alert(xvr.status)
				}//end 
			});//end ajax
		});//click
	$("#return").click(function() {
		location.href="index_cln.do";
	});
});//ready
</script>
<style type="text/css">
#headerDiv{ margin: auto 0px; height: 250px; margin-bottom: 20px;}
#cId{width: 400px; height: 50px; margin: auto 0px; margin-bottom: 20px; border:  1px solid #BDBDBD}
#cName{width: 400px; height: 50px; margin: auto 0px; margin-bottom: 20px; border:  1px solid #BDBDBD}
#cBirth{width: 400px; height: 50px; margin: auto 0px; margin-bottom: 20px; border: 1px solid #BDBDBD}
#cPhone{width: 400px; height: 50px; margin: auto 0px; margin-bottom: 20px; border: 1px solid #BDBDBD}
#login{width: 410px; height: 70px; margin: auto 0px; margin-bottom: 20px;}
</style>
</head>

<body>
  <header>
    <!-- Navbar
    ================================================== -->
 <div class=" cbp-af-header">
			<div class=" cbp-af-inner">
				<div class="container">
					<div class="row">

						<div class="span4">
							<!-- logo -->
							<a class="logo" href="index_cln.do">
								<h1>MKJG</h1> <!-- <img src="assets/img/logo.png" alt="" /> -->
							</a>
							<!-- end logo -->
						</div>

					</div>
				</div>
			</div>
		</div>
  </header>
  <!-- Subhead
================================================== -->
  <section id="subintro">

    <div class="container">
      <div class="row">
        <div class="span4">
          <h3><strong> 비밀번호 찾기 </strong></h3>
        </div>
      </div>
    </div>

  </section>
  <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="centered">
				<div id="containerDiv">
				<form action="index_cln.do" method="post" name="frm" id="frm">
				<input type="radio" id="check" name="check" value="ceo">사업자&nbsp;&nbsp;&nbsp;
				<input type="radio" id="check" name="check" value="emp">직원<br/><br/>
				<input type="text" placeholder="아이디" id="cId" name="cId" class="input-xxlarge"><br/>
				<input type="text" placeholder="이름" id="cName" name="cName" class="input-xxlarge"><br/>
				<input type="text" placeholder="생년월일" id="cBirth" name="cBirth" class="input-xxlarge"><br/>
				<input type="text" placeholder="연락처" id="cPhone" name="cPhone" class="input-xxlarge"><br/>
				<input type="button" value="비밀번호찾기" id="pwSearch" class="btn btn-inverse">
				<input type="button" value="돌아가기" id="return" class="btn btn-inverse">
				</form>
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
