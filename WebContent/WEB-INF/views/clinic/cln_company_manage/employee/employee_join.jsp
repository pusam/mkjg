<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
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
		#id{background-color: #F5F5F5; height: 25px;}
		#pass1{background-color: #F5F5F5; height: 25px;}
		#pass2{background-color: #F5F5F5; height: 25px;}
		#name{background-color: #F5F5F5; height: 25px;}
		#birth{background-color: #F5F5F5; height: 25px;}
		#phone{background-color: #F5F5F5; height: 25px;}
		#email{background-color: #F5F5F5; height: 25px;}
		#post{background-color: #F5F5F5; height: 25px;}
		#doro_addr{background-color: #F5F5F5; height: 25px;}
		#addr1{background-color: #F5F5F5; height: 25px;}
		#addr2{background-color: #F5F5F5; height: 25px;}
	</style>
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function searchAddress() {
        new daum.Postcode({
            oncomplete: function(data) {
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                document.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('doro_addr').value = fullRoadAddr;
                document.getElementById('addr1').value = data.jibunAddress;
                
                document.getElementById('addr1').focus();

                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
<script type="text/javascript">
var idchk;
$(function(){
	$("#join").click(function(){
		var chkId =/^[a-z][a-z\d]{3,20}$/
		var chkName=/^[가-힝]{2,}$/
		var chkBirth= /^(19|20)\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[0-1])$/
		var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		var chkEmail = /^[\w]{4,}@[\w]+(\.[\w-]+){1,3}$/
		var chkPost = /^([0-9]{5})$/
		var chkGender = /^[가-힝]{2}$/
		
		if($("#id").val() == ""){
			alertCenter("#id", "#Alert", "아이디를 입력해주세요.");
			return;
		}else if( !chkId.test( $("#id").val() )){
			alertCenter("#id", "#Alert", "아이디는 영문 소문자 혹은 소문자와 숫자 혼합으로 3~20자 입력해주세요");
			return;
        }//end else if
        
        
		if($("#pass1").val() == ""){
			alertCenter("#pass1", "#Alert", "비밀번호를 입력해주세요.");
			return;
        }//end else if
        
		if($("#pass2").val() == ""){
			alertCenter("#pass2", "#Alert", "비밀번호를 입력해주세요.");
			return;
        }//end else if
        
        if($("#pass1").val() != "" && $("#pass2").val() != "" ){
        	if($("#pass1").val() != $("#pass2").val() ){
        		alertCenter("#pass2", "#Alert", "비밀번호가 같은지 확인해주세요.");
				return;
        	}//end if
        }//end if
        
    	if($("#name").val() == ""){
			alertCenter("#name", "#Alert", "이름을 입력해주세요.");
			return;
		}else if( !chkName.test( $("#name").val() )){
			alertCenter("#name", "#Alert", "이름은 최소 2자 한글로만 작성해주세요.");
			return;
        }//end else if
        
		
		if($("#birth").val() == ""){
			alertCenter("#birth", "#Alert", "생년월일을 입력해주세요.");
			return;
		}else if(!chkBirth.test( $("#birth").val() )){
			alertCenter("#birth", "#Alert", "생년월일을 확인해주세요. (ex: 1900-01-01)");
			return;
		}//end else if
		
		if($("#phone").val() == ""){
			alertCenter("#phone", "#Alert", "핸드폰 번호를 입력해주세요.");
			return;
		}else if( !chkPhone.test( $("#phone").val() )){
			alertCenter("#phone", "#Alert", "핸드폰 번호를 확인해주세요. (ex: 010-1111-5555)");
			return;
        }//end else if
		
		if($("#email").val() == ""){
			alertCenter("#email", "#Alert", "이메일을 입력해주세요.");
			return;
		}else if( !chkEmail.test( $("#email").val() )){
		alertCenter("#email", "#Alert", "이메일을 확인해주세요.");
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
		
		if(idchk != $("#id").val()){
			alertCenter("#id", "#Alert", "아이디 체크를 해주세요");
			alert(sameId);
			return;
		}//end if
		
		var eid = $("#id").val();
		var pw = $("#pass1").val();
		var ename = $("#name").val();
		var birthday = $("#birth").val();
		var tel = $("#phone").val();
		var email = $("#email").val();
		var post = $("#post").val();
		var addr = $("#addr1").val();
		var addr_detail = $("#addr2").val();
		$.ajax({
            type : 'POST',
            data : {eid, pw, ename, post, addr, addr_detail, email, birthday, tel },
            url : "employee_join_ok.do",
            dataType : "json",
            success : function(json) {
            		location.href="${path}/mkjg/employee_OK.do";
            },// success
            error: function(error){
            	alert("에러");
            }// error
		});//ajax
		
		
		
	});//click
	
	$("#idCheck").click(function(){
		var eid = $("#id").val();
		$.ajax({
            type : 'POST',
            data : {eid},
            url : "employee_idcheck.do",
            dataType : "json",
            success : function(json) {
            	if(json.cnt>0){
            		alertCenter("#id", "#Alert", "중복된 아이디가 있습니다.");
            	}else{
            		alertCenter("#id", "#Alert", "사용할 수 있는 아이디 입니다.");
            		idchk=eid;
            		alert(idchk);
            	}//end else
            },// success
            error: function(error){
            	alert("에러");
            }// error
		});//ajax
		});//idchk click
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
          <h3>MKJG<strong> 업체관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">직원관리<span class="divider">/</span></li>
            <li class="active">직원등록</li>
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
              <h3>직원등록</h3>
            </div>
          <!--  -->
          <div class="controls docs-input-sizes" style="margin-left: 300px;">
          <form action="${path}/mkjg/employee_OK.do" method="POST" name="frm" id="frm">
          <table>
          <tr>
          	<td >
                <input class="input-large" type="text" placeholder="아이디" id="id" name="eid" maxlength="20"  style="display: inline-block;">
                <button type="button" class="btn btn-inverse" id="idCheck" style="margin-left: 5px; margin-bottom: 10px;">체크</button>
                <br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="password" placeholder="비밀번호" id="pass1" name="pass1" maxlength="15"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td>
                <input class="input-xxlarge" type="password" placeholder="비밀번호 확인" id="pass2" name="pass2" maxlength="15"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="이름" id="name" name="name" maxlength="10"><br/><br/>
            </td>
           </tr>
            <tr>
             </tr>  
           <tr>
          	<td>
                <input class="input-xxlarge" type="text" placeholder="생년월일 ex) 19910101" id="birth" name="birth" maxlength="10"><br/><br/>
           </td>
           </tr>
           <tr>
          	<td>
                <input class="input-xxlarge" type="text" placeholder="전화번호 ex) 010-0000-1111" id="phone" name="tel" maxlength="13"><br/><br/>
           </td>
           </tr>
           <tr>
          	<td>
                <input class="input-xxlarge" type="text" placeholder="이메일" id="email" name="email" maxlength="50"><br/><br/>
           </td>
           </tr>
           <tr>
          	<td>
                <input class="input-large" type="text" placeholder="우편번호" id="post" name="post" style="display: inline-block;" maxlength="7" readonly="readonly" value="${view.post}">
                <input class="btn btn-inverse" type="button" onclick="searchAddress()" value="찾기" style="margin-left: 10px; margin-bottom: 5px;">
                <br/><br/>
           </td>
           </tr>
           <tr>
          	<td>
                <input class="input-xlarge" type="text" placeholder="도로명주소" id="doro_addr" name="doro_addr" maxlength="100"
                 readonly="readonly" style="width: 258px;">
                <input class="input-xlarge" type="text" placeholder="지번주소" id="addr1" name="addr" maxlength="100"
                 readonly="readonly"  style="width: 258px;"><br/>
                <input class="input-xxlarge" type="text" placeholder="상세주소" id="addr2" name="addr_detail" maxlength="100"><br/><br/>
           </td>
           </tr>
          <tr>
          <td>
          <span id="Alert" style="font-size: 20px;"></span>
          <br/><br/>
          </td>
          </tr>
               </table>
               <div style="margin-left: 250px;">
            	<button type="button" class="btn btn-inverse" id="join">등록</button>
            	<button type="button" class="btn btn-inverse" id="back">뒤로</button>
             </div>
               </form>
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
