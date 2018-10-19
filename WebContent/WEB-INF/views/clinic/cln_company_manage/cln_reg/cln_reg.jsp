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
		#hName{background-color: #F5F5F5; height: 30px;}
		#cBln{background-color: #F5F5F5; height: 30px;}
		#cName{background-color: #F5F5F5; height: 30px;}
		#cPhone{background-color: #F5F5F5; height: 30px;}
		#cMail1{background-color: #F5F5F5; height: 30px; width: 200px}
		#cMail2{background-color: #F5F5F5; height: 30px; width: 200px}
		#selDomain{background-color: #F5F5F5;height: 30px; width: 200px}
		#openHH{background-color: #F5F5F5; height: 30px;}
		#openMM{background-color: #F5F5F5; height: 30px;}
		#endHH{background-color: #F5F5F5; height: 30px;}
		#endMM{background-color: #F5F5F5; height: 30px;}
		#sample4_postcode{background-color: #F5F5F5; height: 30px;}
		#sample4_execDaumPostcode{background-color: #F5F5F5; height: 30px;}
		#sample4_roadAddress{background-color: #F5F5F5; height: 30px;}
		#sample4_jibunAddress{background-color: #F5F5F5; height: 30px;}
		#detailAddr{background-color: #F5F5F5; height: 30px; width: 430px}
		#intro{background-color: #F5F5F5; height: 270px;}
		.night{display: none;}
		
		#cKindOut{color: #FF0000;}
		#cBlnOut{color: #FF0000;}
		#cPhoneOut{color: #FF0000;}
		#cMailOut{color: #FF0000;}
		#openTimeOut{color: #FF0000;}
		#sample4_postcodeOut{color: #FF0000;}
		#treatmentOut{color: #FF0000;}
		#cBlnOut{color: #FF0000;}
		#beautyOut{color: #FF0000;}
		#endTimeOut{color: #FF0000;}
		#weekOut{color: #FF0000;}
		#introOut{color: #FF0000;}
	</style>
	
	<script type="text/javascript">
	$(function(){
		var LOC_X = 0; 
		var LOC_Y = 0; 
		
		$("#night").click(function() {
			if($("#night").is(":checked")){
				$(".night").css("display","block");
				return;
			}else{
				$(".night").css("display","none");
			}
		})
		
		$("#selDomain").change(function() {
			if($("#selDomain").val()!="none"){
				$("#cMail2").val($("#selDomain").val());
				return;
			}else{
				$("#cMail2").val("");
			}
		});
		
		
		$("#add").click(function(){
			var chkPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

			if($(':radio[name="cKind"]:checked').length < 1){
				$("#cKindOut").html("병원 종류를 선택해주세요.");
				return;
			}else{
				$("#cKindOut").html("");
			}//end else
			
			checkCenter("#hName", "#hNameOut");
			
			if($("#cBln").val() == ""){
				$("#cBlnOut").html("필수 정보 입니다.");
				return;
			}else if($("#cBln").val().length !=10){
				$("#cBlnOut").html("사업자 번호는 10자리 입니다.");
				return;
	        }else{
	        	$("#cBlnOut").html("");
	        }
			
			checkCenter("#cName", "#cNameOut");

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
				
			if($("#openHH").val() == "none" || $("#openMM").val() == "none" || $("#endHH").val() == "none" || $("#endMM").val() == "none"){
				$("#openTimeOut").html("영업 시간을 선택해주세요.");
				return;
			}else{
				$("#openTimeOut").html("");
			}
			
			if($("#sample4_postcode").val()=="" || $("#detailAddr").val()=="" ){
				$("#sample4_postcodeOut").html("우편번호와 상세주소는 필수 입력 입니다.");
				return;
			}else{
				$("#sample4_postcodeOut").html("");
			}//end else
			
 			if($(':checkbox[name="medicine"]:checked').length < 1 && $(':checkbox[name="surgery"]:checked').length < 1){
				$("#treatmentOut").html("진료 과목을 선택해주세요");
				return;
			}else{
				$("#treatmentOut").html("");
			}
			
 			if($(':checkbox[name="beauty"]:checked').length < 1 && $(':checkbox[name="hosCare"]:checked').length < 1){
				$("#beautyOut").html("미용 및 입원 유무를 선택해주세요");
				return;
			}else{
				$("#beautyOut").html("");
			}
 			
 			if($("#night").is(":checked")){
 				if($("#week").val()=="none"){
 					$("#weekOut").html("요일을 선택해주세요");
 					return;
 				}else{
 					$("#weekOut").html("");
 				}
 				
 				if($("#openNightHH").val() == "none" || $("#openNightMM").val() == "none" || $("#endNightHH").val() == "none" || $("#endNightMM").val() == "none"){
 					$("#endTimeOut").html("야간 영업 시간을 선택해주세요.");
 					return;
 				}else{
 					$("#endTimeOut").html("");
 				}
			}
 			
			if($("#intro").val() == ""){
 				$("#introOut").html("소개글을 입력해주세요.");
 				return;
 			}else{
 				$("#introOut").html("");
 			}//end else
 				
 			$("#frm").submit();
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
	    	$("#loc_x").val(LOC_X);
	    	$("#loc_y").val(LOC_Y);
	    }
	};
	$(function(){
		$("#btn").click(function(){
			var addr=$("#sample4_jibunAddress").val();
			geocoder.addressSearch(addr, callback);
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
          <h3>mkjg<strong> 업체관리 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">업체관리<span class="divider">/</span></li>
            <li class="active">사업자 업체 등록</li>
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
              <h3>사업자 업체 등록</h3>
            </div>
          <form action="companyReg.do" method="post" name="frm" id="frm" enctype="multipart/form-data">
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
          <tr>
          	<td >
                <input type="radio" name="cKind">일반병원<input type="radio"  name="cKind" checked="checked">24시병원<br/>
                <span id="cKindOut"></span><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="병원명" id="hName" name="hName" value="한독"><br/>
                <span id="hNameOut"></span><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="사업자번호" id="cBln" name="cBln" value="0000000030"><br/>
                <span id="cBlnOut"></span><br/>
            </td>
          </tr>
          <tr>
          	<td >
				<input class="input-xxlarge" type="text" placeholder="원장명" id="cName" name="cName" value="천재"><br/>
                <span id="cNameOut"></span><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="핸드폰번호  입력예시) 010-0000-0000" id="cPhone" name="cPhone" maxlength="13" value="010-2222-1857"><br/>
                <span id="cPhoneOut"></span><br/>
            </td>
           </tr>
           <tr>
          	<td >
                <input class="input-middle" type="text" placeholder="이메일" id="cMail1" name="cMail1" maxlength="7" style="display: inline-block;" value="genius">
                &nbsp;&nbsp;@&nbsp;&nbsp;
                <input class="input-middle" type="text" placeholder="직접입력" id="cMail2" name="cMail2" maxlength="7" style="display: inline-block; width: 200px" value="naver.com">
                <select style="width: 100px" id="selDomain">
                	<option value="none">직접 입력</option>
                	<option>naver.com</option>
                	<option>daum.net</option>
                </select><br/>
                <span id="cMailOut"></span><br/>
             </td>
            </tr>
           <tr>
          	<td >
          		영업시간<br/>
                <select id="openHH" name="openHH" style="width: 100px">
                	<option value="none">오픈시간</option>
                	<c:forEach var="openHH" begin="07" end="11" step="01">
                	<option>${openHH }</option>
                	</c:forEach>
                </select>
                <select id="openMM" name="openMM" style="width: 100px">
               	 	<option value="none">분선택</option>
                	<c:forEach var="openMM" begin="00" end="60" step="10">
                	<option>${openMM }</option>
                	</c:forEach>
                </select>
                &nbsp;-&nbsp;
                <select id="endHH" name="endHH" style="width: 100px">
                	<option value="none">마감시간</option>
                	<c:forEach var="endHH" begin="20" end="24" step="01">
                	<option>${endHH }</option>
                	</c:forEach>
                </select>
                <select id="endMM" name="endMM" style="width: 100px">
               	 	<option value="none">분선택</option>
                	<c:forEach var="endMM" begin="00" end="60" step="10">
                	<option>${endMM }</option>
                	</c:forEach>
                </select>
                <br/>
                <span id="openTimeOut"></span><br/>
             </td>
            </tr>
           <tr>
          	<td >
                <input type="checkbox" id="night" name="night">야간진료여부
                <div class="night">
                <select id = "week" name="week">
                	<option value ="none">--요일 선택--</option>
                	<option>월요일</option>
                	<option>화요일</option>
                	<option>수요일</option>
                	<option>목요일</option>
                	<option>금요일</option>
                	<option>토요일</option>
                	<option>일요일</option>
                </select><br/>
                <span id="weekOut"></span><br/>
                <select id="openNightHH" name="openNightHH" style="width: 100px">
                	<option value="none">오픈시간</option>
                	<c:forEach var="openNightHH" begin="07" end="11" step="01">
                	<option>${openNightHH }</option>
                	</c:forEach>
                </select>
                <select id="openNightMM"  name="openNightMM" style="width: 100px">
               	 	<option value="none">분선택</option>
                	<c:forEach var="openNightMM" begin="00" end="60" step="10">
                	<option>${openNightMM }</option>
                	</c:forEach>
                </select>
                &nbsp;-&nbsp;
                <select id="endNightHH" name="endNightHH" style="width: 100px">
                	<option value="none">마감시간</option>
                	<c:forEach var="endNightHH" begin="17" end="21" step="01">
                	<option>${endNightHH }</option>
                	</c:forEach>
                </select>
                <select id="endNightMM" name="endNightMM" style="width: 100px">
               	 	<option value="none">분선택</option>
                	<c:forEach var="endNightMM" begin="00" end="60" step="10">
                	<option>${endNightMM }</option>
                	</c:forEach>
                </select><br/>
                <span id="endTimeOut"></span>
                </div>
                <br/>
             </td>
            </tr>
           <tr>
          	<td>
				<input type="text" id="sample4_postcode" name="sample4_postcode" placeholder="우편번호" class="input-large" readonly="readonly">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="display: inline-block;"><br>
				<input type="text" id="sample4_roadAddress" name="sample4_roadAddress" placeholder="도로명주소" style="display: inline-block;" readonly="readonly">
				<input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" placeholder="지번주소" style="display: inline-block;" readonly="readonly"><br/>
				<input type="text" placeholder="상세주소" id="detailAddr" name="detailAddr"><br/>
				<input type="hidden" name="loc_x" id="loc_x">
				<input type="hidden" name="loc_y" id="loc_y">
				<span id="sample4_postcodeOut"></span>
           </td>
          </tr>
          <tr>
          	<td >
          		진료 과목 &nbsp;
                <input type="checkbox" id="medicine" name="medicine" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;" value="1"> 내과
                <input type="checkbox" id="surgery" name="surgery" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;" value="2"> 외과<br/>
                <span id="treatmentOut"></span><br/>
            </td>
           </tr>
            <tr>
          	<td>
          		미용 및 입원 유무 &nbsp;
                <input type="checkbox" id="beauty" name="beauty" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;" value="1"> 미용유무
                <input type="checkbox" id="hosCare" name="hosCare" class="checkbox" style="margin-left: 10px; width: 15px; margin-bottom: 6px;" value="1"> 입원유무<br/>
                <span id="beautyOut"></span><br/>
             </td>
           </tr>
          <tr>
          <td style="text-align: right;">
          <span id="Alert" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;
          <button type="button" class="btn btn-inverse" id="add">업체등록</button>
           <button type="button" class="btn btn-inverse" id="cancle">취소</button><br/><br/>
          </td>
          </tr>
          </table>
           </div>
            <div class="controls docs-input-sizes" style="float: left; margin-left: 80px;">
          <table>
          	<tr>
          		<td>
          			병원 이미지 등록
          		</td>
          	</tr>
          	<tr>
         	 <td>
			<!-- <form name="frmPopup" id="frmPopup" modelAttribute="popupVO" method="post" action="companyReg.do" enctype="multipart/form-data" > -->
			<div>
			<table class="table">
			    <tbody>
			        <tr>
			            <th>이미지 </th>
		            </tr>
		            <tr>
			             <td>
			                <input type="file" name="uploadFile1" id="uploadFile1"/>
			            </td>
   		            </tr>
		            <tr>
			            <td>
			            	<input type="file" name="uploadFile2" id="uploadFile2"/>
			            </td>
		            </tr>
		            <tr>			            
			            <td>
			            	<input type="file" name="uploadFile3" id="uploadFile3"/>
			            </td>
		            </tr>
		            <tr>			            
			            <td>
			            	<input type="file" name="uploadFile4" id="uploadFile4"/>
			            </td>
			        </tr>
			    </tbody>
			</table>
			</div>
			<!-- </form> -->
	          </td>
	         </tr>
	         <tr>
	         	<td>
	         		업체설명
	         	</td>
	         </tr>
	         <tr>
		         <td>
		         <textarea name="intro" rows="10" cols="35" maxlength="1000" style="width: 450px;" id="intro"></textarea><br/>
		         <span id="introOut"></span>
		         </td>
	         </tr>
	         <tr>
	         	<td>
	         	<br/>
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
