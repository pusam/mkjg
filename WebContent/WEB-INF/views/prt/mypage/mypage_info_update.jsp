<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Template Name: vacayhome
File Name: single-blog.html
Author Name: ThemeVault
Author URI: http://www.themevault.net/
License URI: http://www.themevault.net/license/-->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="http://211.63.89.152/mkjg/common/prt/images/icons/cicon.png"/>
        <title>맡겨주개</title>

        <!-- Bootstrap core CSS -->
        <link href="http://211.63.89.152/mkjg/common/prt/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://211.63.89.152/mkjg/common/prt/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="http://211.63.89.152/mkjg/common/prt/css/style2.css" rel="stylesheet">
        <link href="http://211.63.89.152/mkjg/common/prt/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="stylesheet" href="http://211.63.89.152/mkjg/common/prt/css/lightbox.min.css">
        <link href="http://211.63.89.152/mkjg/common/prt/css/responsive.css" rel="stylesheet">
        <script src="http://211.63.89.152/mkjg/common/prt/js/jquery.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/instafeed.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/custom.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$("#btnChk").click(function(){
		location.href="mypage_info_update.do";		
	});

	
});//ready
</script>
<!-- 우편번호 시작  -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
function postcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('addr2').focus();
        }
    }).open();
}	
</script>
<style type="text/css">
        
.blog-list{ margin-top:-400px;}       
 /* 게시판 만들기 */
#sub_title_top{float:right;color: #A3A3A3; /* margin-left:-80px; */margin-right:67px;}
#sub_title{margin-left:320px;height:50px; font-weight: 800;font-size:25px;}
#move_title{padding-top:30px;padding-left:50px; height:30px;color:#162541;}
#mypage{margin-left:350px;margin-top:70px;}

#frm{padding-left:20px;width:750px;}
#tab{/* border:1px solid #ccc; */border-spacing:0px;width:700px;margin:0px auto;}

th{padding-right:10px;height:30px;font-size:15px;text-align:right;}
td{height:35px;text-align:left;}

#zipcodeSearch{margin-left:5px;width:100px;height:25px;}
#btnUpdate{width:75px;height:30px; font-size:13px;font-weight:900;background-color:white; border:2px solid #558ED5;text-align:center;margin-right:10px;}
#btnLeave{width:75px;height:30px; font-size:13px;font-weight:900;background-color:white; border:2px solid #558ED5;text-align:center}

</style>
    </head>
    <body>
        <div id="page">
            <!--header--->
            <header class="header-container">
                <div class="container">
                    <div class="top-row">
                        <div class="row">
                            <div class="col-md-2 col-sm-6 col-xs-6">
                                <div id="logo">
                                    <!--<a href="index.html"><img src="images/logo.png" alt="logo"></a>-->
                                     <a href="index.do"><img src="http://211.63.89.152/mkjg/common/prt/images/icons/icon.png"/><span style="font-size:40px;">MKJG</span></a>
                                </div>                       
                            </div>
                            <div class="col-sm-6 visible-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">LOGIN</button></div>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
                                <nav class="navbar navbar-default">
                                    <div class="navbar-header page-scroll">
                                        <button data-target=".navbar-ex1-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>

                                    </div>
                                    <div class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
                                        <ul class="list-unstyled nav1 cl-effect-10">
                                            <li><a data-hover="HOME" class="active" href="prt_index.do"><span>HOME</span></a></li>
                                            <li><a data-hover="알림"  href="prt_notice.do"><span>알림</span></a></li>
                                            <li><a data-hover="병원찾기"  href="cln_search.do"><span>병원찾기</span></a></li>
                                            <li><a data-hover="고객센터" href="custom_center_ask.do"><span>고객센터</span></a></li>
                                            <li><a data-hover="마이페이지" href="mypage_history.do"><span>마이페이지</span></a></li>
                                            <li><a data-hover="참조" href="reference.do"><span>참조</span></a></li>
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">LOGIN</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!--end-->
            <section class="image-head-wrapper" style="/* background-image: url('http://211.63.89.152/mkjg/common/prt/images/banner2.jpg'); */ border:1px solid #333;">
                <div class="inner-wrapper" style="/* border:4px solid #333; */ color:white; border-top:4px solid #B9CDE5;border-bottom:4px solid #B9CDE5;">
                    <h2>마이페이지</h2>
                </div>
            </section>
			
			<!-- line  -->
			<div style="width:1200px; margin:0px auto;"><hr style="border:1px solid #ccc;"/></div>
            <!--dinning-->
            <section class="blog">
                <div class="container">
                    <div class="row">
                    	<div id="sub_title_top"><img src="http://211.63.89.152/mkjg/common/prt/images/mini_home.png" style="margin-bottom:3px;"/> &gt; 마이페이지 &gt; 정보변경</div>
                    	<div id="sub_title"><div id="move_title"><img src="http://211.63.89.152/mkjg/common/prt/images/icons/info_update.png" style="width:45px;"/>&nbsp; 정보변경</div></div>
                     	<div id="mypage">
						<form id="frm" method="get" action="custom_center_ask_write.jsp"> 
							<table id="tab">
								<tbody>
									<tr>
										<th>이름</th>
										<td><input type="text" id="name" name="name" style="width:155px;"/></td>
									</tr>									
									<tr>
										<th>아이디</th>
										<td><input type="text" id="id" name="id" readonly="readonly"/></td>
									</tr>									
									<tr>
										<th><img src="http://211.63.89.152/mkjg/common/prt/images/icons/check.png" style="width:20px;"/> 비밀번호</th>
										<td><input type="password" id="pwd" name="pwd"/></td>
									</tr>									
									<tr>
										<th><img src="http://211.63.89.152/mkjg/common/prt/images/icons/check.png" style="width:20px;"/> 비밀번호 확인</th>
										<td><input type="password" id="pwdChk" name="pwdChk"/></td>
									</tr>									
									<tr>
										<th>생년월일</th>
										<td><input type="text" id="birth" name="birth" maxlength="8"/> ex) 20180101</td>
									</tr>									
									<tr>
										<th>우편번호</th>
										<td>
										<input type="text" id="zipcode" name="zipcode" maxlength="5" style="width:60px;"/>
										<input type="button" id="zipcodeSearch" onclick="postcode()" value="우편번호 찾기"/></td>
									</tr>									
									<tr>
										<th>주소</th>
										<td><input type="text" id="addr1" name="addr1" style="width:250px;"/></td>
									</tr>									
									<tr>
										<th>상세주소</th>
										<td><input type="text" id="addr2" name="addr2"/></td>
									</tr>									
									<tr>
										<th>이메일</th>
										<td>
											<input type="text" id="email1" name="email1" style="width:100px;"/> @ 
											<input type="text" id="email2" name="email2" style="width:100px;"/>
											<select>
												<option>------ 선택 ------</option>
												<option>naver.com</option>
												<option>daum.net</option>
												<option>gmail.com</option>
											</select>
										</td>
									</tr>									
									<tr>
										<th>전화번호</th>
										<td><input type="text" id="phone" name="phone" maxlength="13"/> ex) 010-1234-1234</td>
									</tr>									
								</tbody>
								<tfoot>
									<tr>
										<td colspan="3" style="text-align:center;height:65px;">
										<input type="button" value="변경하기" id="btnUpdate"/>
										<input type="button" value="탈퇴하기" id="btnLeave"/>
										</td>
									</tr>
								</tfoot>
							</table>
						</form>
						</div>
                        <aside class="col-md-3 col-sm-4 col-xs-12">
                            <div class="blog-list">
                                <h3><img src="http://211.63.89.152/mkjg/common/prt/images/icons/mypage.png" style="width:35px;"/><font style="margin-left:10px;">마이페이지</font></h3>
                                <ul>
                                    <li><a href="mypage_history.do"><i class="fa fa-caret-right"></i>이용내역</a></li>
                                    <li><a href="mypage_reservation.do"><i class="fa fa-caret-right"></i>예약확인</a></li>
                                    <li><a href="mypage_blacklist.do"><i class="fa fa-caret-right"></i>블랙리스트</a></li>
                                    <li><a href="mypage_info.do"><i class="fa fa-caret-right"></i>정보수정</a></li>
                                </ul>

                            </div>
                        </aside>
                        
                    </div>
                </div>
            </section>
            <!--end-->
            <!---footer--->
            <footer>
                    <div class="copyright">
                        &copy; 2018 All right reserved. Class4_Group4
                    </div>
            </footer>
			<!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>

        </div>
    </body>
</html>
