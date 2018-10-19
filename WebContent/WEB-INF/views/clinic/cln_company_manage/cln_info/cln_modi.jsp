<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		#hName{background-color: #F5F5F5; height: 25px;}
		#cNum{background-color: #F5F5F5; height: 25px;}
		#cName{background-color: #F5F5F5; height: 25px;}
		#phone{background-color: #F5F5F5; height: 25px;}
		#email{background-color: #F5F5F5; height: 25px;}
		#open{background-color: #F5F5F5; height: 25px;}
		#close{background-color: #F5F5F5; height: 25px;}
		#night_open{background-color: #F5F5F5; height: 25px;}
		#night_close{background-color: #F5F5F5; height: 25px;}
		#post{background-color: #F5F5F5; height: 25px;}
		#doro_addr{background-color: #F5F5F5; height: 25px;}
		#addr1{background-color: #F5F5F5; height: 25px;}
		#addr2{background-color: #F5F5F5; height: 25px;}
		#intro{background-color: #F5F5F5; height: 270px;}
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
	$(function(){
		$("#modi").click(function(){
			var chkPhone = /^([0-9]{2,3})-?([0-9]{3,4})-?([0-9]{4})$/;
			var chkEmail = /^[\w]{4,}@[\w]+(\.[\w-]+){1,3}$/
			var chkPost = /^([0-9]{5})$/
			var time = /^\d{2}:\d{2}$/;
			
			var tel = $('input[name=tel]').val();
			var email = $('input[name=email]').val();
			var hstl_yn;
			var night_yn;
			var cut_yn;
			var subject;
			var day_of_week;
			var operating = $(":input:radio[name=operating]:checked").val();
			var open_time = $('input[name=open_time]').val();
			var close_time = $('input[name=close_time]').val();
			var intro = $("#intro").val();
			var addr = $('input[name=addr]').val();
			var addr_detail = $('input[name=addr_detail]').val();
			var select = $('select[name=day_of_week]').val();
			var nopen = $('input[name=nopen]').val();
			var nclose = $('input[name=nclose]').val();
			
			
	        var sub1 = document.getElementById("sub1").checked;
	        var sub2 = document.getElementById("sub2").checked;
			var night=document.getElementById("night").checked;
			var cut=document.getElementById("beauty").checked;
			var hstl=document.getElementById("hosCare").checked;
			
			if(select=="월요일"){
				day_of_week="1"
			}else if(select=="화요일"){
				day_of_week="2"
			}else if(select=="수요일"){
				day_of_week="3"
			}else if(select=="목요일"){
				day_of_week="4"
			}else if(select=="금요일"){
				day_of_week="5"
			}else{
				day_of_week="";
			}
			
	        if(night && operating=="nomal"){ 	night_yn ="Y";
	        }else if(!night  && operating=="nomal"){ 	night_yn ="N";
	        }else if(operating=="night"){ 	night_yn ="A";
	        }//end else if
	        
	        if(sub1){ 	subject="1";
	        }//end if
	        
	        if(sub2){	subject="2";
        	}//end if
        	
	        if(sub1 && sub2){	subject="3";
        	}//end if
	        
	        if(cut){	cut_yn = "Y";
	        }else  if(!cut){	cut_yn = "N";
	        }//end if
	        
	        if(hstl){  	hstl_yn= "Y"
	        }else if(!hstl){ 	hstl_yn ="N"
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
			
			if($("#open").val() == "" || $("#close").val() == ""){
				alertCenter("#close", "#Alert", " 운영시간을 입력해주세요.");
				return;
			}else if( !time.test( $("#open").val() )){
				alertCenter("#close", "#Alert", "오픈시간을 확인해주세요. (ex: 12:00)");
				return;
            }else if( !time.test( $("#close").val() )){
				alertCenter("#close", "#Alert", "클로즈시간을 확인해주세요. (ex: 20:00)");
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
			
			if($("#intro").val() == ""){
				alertCenter("#intro", "#Alert", " 소개글을 입력해주세요.");
				return;
			}//end if
			
			$.ajax({
	            type : 'POST',
	            data : {tel, email, night_yn ,hstl_yn, cut_yn, open_time, close_time, subject, intro, addr, addr_detail},
	            url : "cln_modi_d.do",
	            dataType : "json",
	            success : function(json) {
	            		location.href="${path}/mkjg/cln_modi.do";
	            },// success
	            error: function(error){
	            	alert("에러 : "+error.status);
	            }// error
			});//ajax
			
			$.ajax({
	            type : 'POST',
	            data : { day_of_week, nopen, nclose },
	            url : "cln_modi_n.do",
	            dataType : "json",
	            success : function(json) {
	            		location.href="${path}/mkjg/cln_modi.do";
	            },// success
	            error: function(error){
	            }// error
			});//ajax
			
		});//click
		
		$("#home").click(function(){
			location.href="index_cln.do";
		});		
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
            <li class="active">업체관리<span class="divider">/</span></li>
            <li class="active">병원정보</li>
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
              <h3>병원정보</h3>
            </div>
          
          <div class="controls docs-input-sizes" style="float: left;">
          <table>
         <tr>
          	<td>
                <input type="radio" id="operating" name="operating" class="radio" value="nomal" style=" width: 15px; margin-bottom: 6px;"> 일반병원&nbsp;&nbsp;
                <input type="radio" id="operating" name="operating" class="radio" value="night" style=" width: 15px; margin-bottom: 6px;"> 24시간 병원<br/><br/>
             </td>
          <tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="병원명" id="hName" name="cln_name" readonly="readonly" value="${view.cln_name}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="사업자번호" id="cNum" name="bln" readonly="readonly" value="${view.bln}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="원장명" id="cName" name="director" readonly="readonly" value="${view.director}"><br/><br/>
            </td>
          </tr>
          <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="전화번호" id="phone" name="tel" maxlength="13" value="${view.tel}"><br/><br/>
            </td>
           </tr>
           <tr>
          	<td >
                <input class="input-xxlarge" type="text" placeholder="이메일" id="email" name="email" maxlength="50" value="${view.email}"><br/><br/>
            </td>
           </tr>
            
           <tr>
          	<td >
                <input class="input-large" type="text" placeholder="운영시간" id="open" name="open_time" maxlength="7" style="display: inline-block;" value="${view.open_time}">
                &nbsp;&nbsp;~&nbsp;&nbsp;
                <input class="input-large" type="text" placeholder="운영시간" id="close" name="close_time" maxlength="7" style="display: inline-block;" value="${view.close_time}">
                <br/><br/>
             </td>
            </tr>
            <tr>
            	<td>
            	<input type="checkbox" id="night" name="night_yn" class="checkbox" style=" width: 15px; margin-bottom: 6px;">&nbsp;야간진료
            	&nbsp;&nbsp;&nbsp;&nbsp;
            	<select name="day_of_week" id="select_day" style="width: 120px; font-size: 13px; margin-right: 70px">
						<option selected="selected" style="line-height: 25px; border: 1px solid #6093e7; height: 15px; border-radius: 3px">--- 요일선택 ---</option>
						<option>월요일</option>
						<option>화요일</option>
						<option>수요일</option>
						<option>목요일</option>
						<option>금요일</option>
					</select>
            	
            	</td>
            </tr>
             <tr>
          	<td >
                <input class="input-large" type="text" placeholder="야간 운영시간" id="night_open" name="nopen" maxlength="7" value="${view.nopen}" style="display: inline-block;">
                &nbsp;&nbsp;~&nbsp;&nbsp;
                <input class="input-large" type="text" placeholder="야간 운영시간" id="night_close" name="nclose" maxlength="7" value="${view.nclose}" style="display: inline-block;">
                <br/><br/>
             </td>
            </tr>
           <tr>
          	<td>
                <input class="input-large" type="text" placeholder="우편번호" id="post" name="post" style="display: inline-block;" readonly="readonly" value="${view.post}">
				<input class="btn btn-inverse" type="button" onclick="searchAddress()" value="찾기" style="margin-left: 10px; margin-bottom: 5px;">
                <br/><br/>
           </td>
           </tr>
          <tr>
          	<td>
                <input class="input-xlarge" type="text" placeholder="도로명주소" id="doro_addr" name="doro_addr" maxlength="100"
                 readonly="readonly" style="width: 258px;">
                <input class="input-xlarge" type="text" placeholder="지번주소" id="addr1" name="addr" maxlength="100"
                 readonly="readonly"  style="width: 258px;" value="${view.sido} ${view.sigungu} ${view.emd}"><br/>
                <input class="input-xxlarge" type="text" placeholder="상세주소" id="addr2" name="addr_detail" maxlength="100" value="${view.addr_detail}"><br/><br/>
           </td>
          </tr>
          <tr>
          	<td>
                <input type="checkbox" id="beauty" name="cut_yn" class="checkbox"  style=" width: 15px; margin-bottom: 6px;"> 미용가능&nbsp;&nbsp;
                <input type="checkbox" id="hosCare" name="hspl_yn" class="checkbox"  style=" width: 15px; margin-bottom: 6px;"> 입원가능<br/><br/>
             </td>
          <tr>
             <tr>
          	<td>
                <input type="checkbox" id="sub1" name="sub1" class="checkbox"  style="width: 15px; margin-bottom: 6px;"> 내과&nbsp;&nbsp;
                <input type="checkbox" id="sub2" name="sub2" class="checkbox"  style="width: 15px; margin-bottom: 6px;"> 외과<br/><br/>
             </td>
          <tr>
          <td style="text-align: right;">
          <span id="Alert" style="font-size: 20px;"></span>&nbsp;&nbsp;&nbsp;
           <button type="button" class="btn btn-inverse" id="modi">수정</button>
           <button type="button" class="btn btn-inverse" id="home">home</button><br/>
          </td>
          </tr>
                </table>
           </div>
            <div class="controls docs-input-sizes">
         	 <table>
          	<tr>
         	 <td>
         	 <div class="row">
       			 <ul class="portfolio-area da-thumbs">
       			 
        		  <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div>
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mkjg/images/1.jpg" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mkjg/images/1.jpg">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
              </div>
            </div>
          </li>
          <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div>
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mkjg/images/2.jpg" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mkjg/images/2.jpg">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
                </div>
              </div>
          </li>
          <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div >
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mvc_login/common/img/placeholder_large3.jpg">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
                </div>
            </div>
          </li>
          <li class="portfolio-item" data-id="id-0" data-type="web">
            	 <div>
                <div class="image-wrapp">
                  <img src="http://localhost:8080/mkjg/images/ok.png" alt="Portfolio name" title="" />
                  <article class="da-animate da-slideFromRight">
                    <a class="zoom" data-pretty="prettyPhoto" href="http://localhost:8080/mkjg/images/ok.png">
							<i class="icon-bg-light icon-zoom-in icon-circled icon-2x"></i>
					</a>
                  </article>
                </div>
              </div>
          </li>
          </ul>
          </div>
	          </td>
	         </tr>
	         <tr>
		         <td >
		         <textarea name="intro" rows="10" cols="35" maxlength="1000" style="width: 490px; margin-left: 30px;" id="intro">${view.intro}</textarea>
		         </td>
	         </tr>
	         <tr>
	         	<td>
	         	<br/>
	         		
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
