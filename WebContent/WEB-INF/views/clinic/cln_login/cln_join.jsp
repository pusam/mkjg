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
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=43e906eeb459be7003ff32868f8f191e&libraries=services,clusterer,drawing"></script>
	<style type="text/css">
		#cId{background-color: #F5F5F5; height: 30px;}
		#cIdOut{color: #FF0000; height: 30px;}
		#cPass{background-color: #F5F5F5; height: 30px;}
		#cPassOut{color: #FF0000; height: 30px;}
		#cPassCheckOut{color: #FF0000; height: 30px;}
		#cPassCheck{background-color: #F5F5F5; height: 30px;}
		#cName{background-color: #F5F5F5; height: 30px;}
		#cPhone{background-color: #F5F5F5; height: 30px;}
		#cBirth{background-color: #F5F5F5; height: 30px;}
		#cMail1{background-color: #F5F5F5; height: 30px; width: 200px}
		#selDomain{background-color: #F5F5F5; height: 30px; width: 200px}
		#cMail2{background-color: #F5F5F5; height: 30px; width: 200px}
		#sample4_postcode{background-color: #F5F5F5; height: 30px;}
		#sample4_execDaumPostcode{background-color: #F5F5F5; height: 30px;}
		#sample4_roadAddress{background-color: #F5F5F5; height: 30px;}
		#sample4_jibunAddress{background-color: #F5F5F5; height: 30px;}
		#detailAddr{background-color: #F5F5F5; height: 30px; width: 430px}
		
		#sample4_postcodeOut{color: #FF0000;}
		#cMailOut{color: #FF0000;}
		#cPhoneOut{color: #FF0000;}
	</style>
	
	<script type="text/javascript">
	$(function(){
		var LOC_X = 0;
		var LOC_Y = 0;
		var chkId = /^[a-z][a-z\d]{3,11}$/;
		var idck =0;
		$("#night").click(function() {
			if($("#night").is(":checked")){
				$(".night").css("display","block");
			}else{
				$(".night").css("display","none");
			}
		})
		
		$("#selDomain").change(function() {
			if($("#selDomain").val()!="none"){
				$("#cMail2").val($("#selDomain").val());
			}else{
				$("#cMail2").val("");
			}
		});
		
		$("#cIdCheck").click(function() {
			var inputed = $('#cId').val();
			$.ajax({
				type : "POST",
	            data : {
	                joinCId : inputed
	            },
				url : "cIdCheck.do",
				success: function(data) {
					if(data==0){
						checkCenter("#cId", "#cIdOut");
						if(!chkId.test( $("#cId").val() )){
							$("#cIdOut").html("아이디는 4~10자리 영문소문자 또는 숫자로 이루어져야합니다.");
							return;
						}else{
							$("#cIdOut").html("해당 아이디는 사용 가능합니다.")
							idck=1;
						}//end else
					}else{
						$("#cIdOut").html("해당 아이디는 사용 중 입니다. 아이디를 변경해주세요.")
					}
				},
				error: function(xvr){
				}//end 
			});//end ajax
		}); //end function
		
		$("#add").click(function(){
			var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			var chkPass = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,12}$/;
			
			if(idck==0){
				$("#cIdOut").html("아이디 중복 체크를 해주세요.");
				return;
			}
			
			checkCenter("#cPass", "#cPassOut");
			
			if(!chkPass.test( $("#cPass").val() )){
				$("#cPassOut").html("비밀번호는 8~12자리 영문소문자, 영문대문자, 숫자, 특수문자가 1개이상 포함되야 합니다.");
				return;
			}else{
				$("#cPassOut").html("");
			}
			
			checkCenter("#cPassCheck", "#cPassCheckOut");
			
			if(!chkPass.test( $("#cPassCheck").val() )){
				$("#cPassCheckOut").html("비밀번호와 동일하게 입력해주세요.");
				return;
			}else{
				$("#cPassCheckOut").html("");
			}
			
			if($("#cPass").val() != $("#cPassCheck").val() ){
				$("#cPassCheckOut").html("패스워드는 동일해야 합니다.");
				return;
			}
				
			checkCenter("#cName", "#cNameOut");
			checkCenter("#cBirth", "#cBirthOut");
			
			if($("#sample4_postcode").val()=="" || $("#detailAddr").val()=="" ){
				$("#sample4_postcodeOut").html("우편번호와 상세주소는 필수 입력 입니다.");
				return;
			}else{
				$("#sample4_postcodeOut").html("");
			}//end else
			
           
			if($("#cPhone").val() == ""){
				$("#cPhoneOut").html("필수 정보 입니다.");
				return;
			}else if( !chkPhone.test( $("#cPhone").val() )){
				$("#cPhoneOut").html("핸드폰 번호는 010-0000-0000의 형식으로 입력해주세요.");
				return;
            }else{
            	$("#cPhoneOut").html("");
            }
			
			if($("#cMail1").val()=="" || $("#cMail2").val()=="" ){
				$("#cMailOut").html("이메일1과 이메일2는 필수 정보 입니다.");
				return;
			}else{
				$("#cMailOut").html("");
			}//end else
            
            var join_data = {
            	cId : $("#cId").val(),
            	cPass : $("#cPass").val(),
            	cName : $("#cName").val(), 
            	cPhone : $("#cPhone").val(), 
            	cBirth : $("#cBirth").val(), 
            	cMail : $("#cMail1").val() +"@"+ $("#cMail2").val(), 
            	cPost : $("#sample4_postcode").val(), 
            	cAddr1 : $("#sample4_jibunAddress").val(), 
            	cAddr2 : $("#detailAddr").val(),
            	cIp : "127.0.0.1",
            	loc_X : LOC_X, 
            	loc_Y : LOC_Y 
            };
			$.ajax({
				type : "POST",
	            data :  join_data,
				url : "joinCheck.do",
				success: function(data) {
					if(data==1){
						location.replace("cln_join_OK.do")
					}else{
						alert("죄송합니다 회원 가입 실패했어요");
					}
				},
				error: function(xhr){
					alert("죄송합니다 서버에 문제가 있습니다.") 
				}//end 
			});//end ajax
            
			});//click
		}); //ready
		
		function checkCenter(id, idOut){
			if($(id).val()==""){
				$(idOut).css("color","#FF0000");
				$(idOut).html("필수 정보 입니다.");
				return;
			}else{
				$(idOut).html("");
			}//end else
		}//checkCenter
		
		/*다음 주소 API  */
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                if(fullRoadAddr !== ''){
	                    fullRoadAddr += extraRoadAddr;
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
	                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
					
	                //좌표값 추가
	                var addr=$("#sample4_jibunAddress").val();
					geocoder.addressSearch(addr, callback);
	                
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
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

	var geocoder = new daum.maps.services.Geocoder();

	var callback = function(result, status) {
	    if (status === daum.maps.services.Status.OK) {
	    	LOC_X = result[0].x;
	    	LOC_Y = result[0].y;
	    }
	};
</script>
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
          <h3>mkjg<strong> 회원가입 </strong></h3>
        </div>
      </div>
    </div>
  </section>
  <section id="maincontent">
    <div class="container" style="margin: 0px auto;">
      <div class="row" style="margin: 0px auto;">
        <div class="span12" style="margin: 0px auto;">
         <div class="page-header" style="margin: 0px auto;">
              <h3>사업자 회원 가입</h3>
            </div>
          <form action="joinOK.do" method="post" name="frm" id="frm">
          <div class="controls docs-input-sizes" style="margin: 0px auto;">
          <table>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="아이디" id="cId" name="cId">
                <input type="button" value="중복체크" id="cIdCheck" name="cIdCheck" class="btn btn-inverse"><br/>
                <span id="cIdOut"></span><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="password" placeholder="비밀번호" id="cPass" name="cPass"><br/>
                <span id="cPassOut"></span><br/>
                <input class="input-xxlarge" type="password" placeholder="비밀번호 확인" id="cPassCheck" name="cPassCheck"><br/>
                <span id="cPassCheckOut"></span><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="이름" id="cName" name="cName"><br/>
                <span id="cNameOut"></span><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="핸드폰번호  입력예시) 010-0000-0000" id="cPhone" name="cPhone" maxlength="13"><br/>
                <span id="cPhoneOut"></span><br/>
            </td>
           </tr>
			<tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="생년월일 입력예시)19900101" id="cBirth" name="cBirth" maxlength="8"><br/>
                <span id="cBirthOut"></span><br/>
             </td>
            </tr>
			<tr>
          	<td>
				<input type="text" id="sample4_postcode" placeholder="우편번호" class="input-large" readonly="readonly">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="display: inline-block;" class="btn btn-inverse"><br>
				<input type="text" id="sample4_roadAddress" placeholder="도로명주소" style="display: inline-block;" readonly="readonly">
				<input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="display: inline-block;" readonly="readonly"><br/>
				<input type="text" placeholder="상세주소" id="detailAddr" name="detailAddr"><br/>
				<span id="sample4_postcodeOut"></span><br/>
           </td>
          </tr>
           <tr>
          	<td >
                <input class="input-middle" type="text" placeholder="이메일" id="cMail1" name="cMail1" maxlength="7" style="display: inline-block;">
                &nbsp;&nbsp;@&nbsp;&nbsp;
                <input class="input-middle" type="text" placeholder="직접입력" id="cMail2" name="cMail2" maxlength="7" style="display: inline-block; width: 200px">
                <select style="width: 100px" id="selDomain">
                	<option value="none">직접 입력</option>
                	<option>naver.com</option>
                	<option>daum.net</option>
                </select><br/>
                <span id="cMailOut"></span><br/>
             </td>
            </tr>
          <tr>
          <td style="text-align: center;">
          <span id="Alert" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-inverse" id="add">회원가입</button>
          <a href="index_cln.do"><button type="button" class="btn btn-inverse" id="cancle">취소</button></a><br/><br/>
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
  <!-- daum api 우편번호  -->
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</body>

</html>
