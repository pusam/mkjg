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
        <link rel="icon" href="http://localhost:8080/mkjg/common/prt/images/icons/icon1.png"/>
        <title>맡겨주개</title>

        <!-- Bootstrap core CSS -->
        <link href="http://localhost:8080/mkjg/common/prt/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://localhost:8080/mkjg/common/prt/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="http://localhost:8080/mkjg/common/prt/css/style2.css" rel="stylesheet">
        <link href="http://localhost:8080/mkjg/common/prt/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="stylesheet" href="http://localhost:8080/mkjg/common/prt/css/lightbox.min.css">
        <link href="http://localhost:8080/mkjg/common/prt/css/responsive.css" rel="stylesheet">
        <script src="http://localhost:8080/mkjg/common/prt/js/jquery.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/instafeed.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/custom.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$("#btnDetailChk").click(function(){
		location.href="mypage_history_detail.jsp";		
	});
	$("#btnMonitor").click(function(){
		location.replace("mypage_monitor_chk.jsp");		
	});
	$("#btnReport").click(function(){
		location.href="custom_center_report_write";		
	});
	
	
});//ready
</script>
<style type="text/css">
        
.blog-list{ margin-top:-350px;}       
 /* 게시판 만들기 */
#sub_title_top{float:right;color: #A3A3A3; /* margin-left:-80px; */margin-right:67px;}
#sub_title{margin-left:320px;height:50px; font-weight: 800;font-size:25px;}
#move_title{padding-top:30px;padding-left:50px; height:30px;color:#162541;}
#mypage{margin-left:350px;margin-top:70px;}

#frm{padding-left:20px;width:750px;text-align:center;}
#tab{/* border:1px solid #ccc; */border-spacing:0px;width:750px;}

th{border-top:2px solid #FF4157;height: 35px; background-color: #F2F2EF; font-size:15px;color: #656565;text-align:center;}
td{border-top:1px solid #ccc;height:25px;}
tbody tr:hover {background-color: #FFFAF2;}
tbody tr:nth-child(odd) { /* background-color: #FFF600; */ }

#btnSelect{width:50px;height:25px;font-family:'Ubuntu'; font-size:13px;background-color:#F2F2EF; border:1px solid #ccc;}

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
                                     <a href="index.do"><img src="http://localhost:8080/mkjg/common/prt/images/icons/cicon.png"/><span style="font-size:40px;">MKJG</span></a>
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
            <section class="image-head-wrapper" style="/* background-image: url('http://localhost:8080/mkjg/common/prt/images/banner2.jpg'); */ border:1px solid #333;">
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
                    	<div id="sub_title_top"><img src="http://localhost:8080/mkjg/common/prt/images/mini_home.png" style="margin-bottom:3px;"/> &gt; 마이페이지 &gt; 블랙리스트</div>
                    	<div id="sub_title"><div id="move_title"><img src="http://localhost:8080/mkjg/common/prt/images/icons/blacklist.png" style="width:45px;"/>&nbsp; 블랙리스트</div></div>
                     	<div id="mypage">
						<form id="frm" method="get" action="custom_center_ask_write.jsp"> 
							<table id="tab">
								<thead>
								<tr>
									<td colspan="8" style="text-align: right; border-top:1px solid white;height:45px;">
										<select>
										<c:forEach  var="year" begin="2018" end="2025" step="1">
										<option>${year }</option>
										</c:forEach>
										</select>년 
										<select>
										<c:forEach  var="month" begin="1" end="12" step="1">
										<option>${month }</option>
										</c:forEach>
										</select>월 
										<input type="button" id="btnSelect"  value="조회"/>
									</td>
								</tr>
								<tr>
									<th id="numTitle" style="width:100px;">번호</th>
									<th id="clnlNameTitle" style="width:100px;">병원명</th>
									<th id="inputDate" style="width:120px;">이용날짜</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="black" items="${black_list}">
									<c:set var="i" value="${i+1 }"/>
									<tr>
										<td><c:out value="${i }"/></td>
										<td><c:out value="${black.clnName}"/></td>
										<td><c:out value="${black.inputDate}"/></td>
									</tr>
								</c:forEach>
								</tbody>
								<tfoot>
								<tr>
									<td colspan="3" style="height:50px;text-align:center;">
										<br/>
										<div id="indexList">
									      <c:forEach var="i" begin="1" end="10" step="1">
									       [ <a href="#">${ i }</a> ]
									      </c:forEach>
									    </div>
									</td>
								</tr>
								</tfoot>
							</table>
						</form>
							
							
						</div>
                        
                        <aside class="col-md-3 col-sm-4 col-xs-12">
                            <div class="blog-list">
                                <h3><img src="http://localhost:8080/mkjg/common/prt/images/icons/mypage.png" style="width:35px;"/><font style="margin-left:10px;">마이페이지</font></h3>
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
