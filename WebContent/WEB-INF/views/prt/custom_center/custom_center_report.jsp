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
        <link rel="icon" href="http://localhost:8080/mkjg/common/prt/images/icons/cicon.png"/>
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
	$("#btnReport").click(function(){
		
		
		location.href="custom_center_report_write.do";		
	});
	
	
	
	
});//ready

</script>
<style type="text/css">
        
.blog-list{margin-top:-350px;}      
 /* 게시판 만들기 */
#sub_title_top{float:right;color: #A3A3A3; /* margin-left:-80px; */margin-right:67px;}
#sub_title{margin-left:310px;height:50px; font-weight: 800;font-size:25px;}
#move_title{padding-top:32px;padding-left:58px; height:30px;color:#162541;}
#report_list{margin-left:350px;margin-top:70px;}

#frm{padding-left:20px;width:800px;text-align:center;}
#tab{border-spacing:0px;}

th{border-top:2px solid #FF4157;height: 35px; background-color: #F2F2EF; font-size:15px;color: #656565;text-align:center;}
td{text-align:left; border-top: 1px solid #ccc;height:25px;}
tbody tr:hover {background-color: #FFFAF2;}
tbody tr:nth-child(odd) { /* background-color: #FFF600; */ }

#btnReport{width:70px;height:30px;font-family:'Ubuntu'; font-size:13px;background-color:#F2F2EF; border:1px solid #ccc;float:right;}
#indexList{text-align:center;}
#search{text-align:center;}
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
                                     <a href="http://localhost:8080/mkjg/WEB-INF/views/prt/index.jsp"><img src="http://localhost:8080/mkjg/common/prt/images/icons/icon.png"/><span style="font-size:40px;">MKJG</span></a>
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
                <div class="inner-wrapper" style="/* border:4px solid #333; */ color:white; border-top:4px solid #E6B9B8;border-bottom:4px solid #E6B9B8;">
                    <h2>고객센터</h2>
                </div>
            </section>
			
			<!-- line  -->
			<div style="width:1200px; margin:0px auto;"><hr style="border:1px solid #ccc;"/></div>
            <!--dinning-->
            <section class="blog">
                <div class="container">
                    <div class="row">
                    	<div id="sub_title_top"><img src="http://localhost:8080/mkjg/common/prt/images/mini_home.png" style="margin-bottom:3px;"/> &gt; 고객센터 &gt; 신고하기</div>
                    	<div id="sub_title"><div id="move_title"><img src="http://localhost:8080/mkjg/common/prt/images/icons/report.png" style="width:45px;height:40px;margin-top:-5px;"/>&nbsp; 신고하기</div></div>
                     	<div id="report_list">
						<form id="frm" method="get"> 
							<table id="tab">
								<thead>
								<tr>
									<th id="numTitle" style="width:60px;">번호</th>
									<th id="subTitle" style="width:500px;">제목</th>
									<th id="askStuTitle" style="width:80px;">답변상태</th>
									<th id="inputTitle" style="width:90px;">작성일</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="report" items="${report_list}">
									<c:set var="i" value="${i+1 }"/>
									<tr>
										<td><c:out value="${toc+1-(current_page-1)*ps -num }"/></td>
										<td><a href="custom_center_report_read.jsp?num=${num}&current_page=${current_page}"><c:out value="${report.cl_title}"/></a></td>
										<td><c:out value="${report.cl_status}"/></td>
										<td><c:out value="${report.wdate}"/></td>
									</tr>
								</c:forEach>
								<c:if test="${empty ask_list }">
								<tr>
									<td colspan="4" style="text-align:center;">
									"${param.keyword }"에 해당하는 글이 없습니다.
									</td>
								</tr>
								</c:if>
								</tbody>
								<tfoot>
								<tr>
									<td colspan="4" style="height:50px;">
										<input type="button" id="btnReport" value="신고하기"/>
									</td>
								</tr>
								<tr>
									<td colspan="4" style="height:50px;border-top:1px solid white;">
										<div id="indexList">
						      			<c:forEach var="i" begin="1" end="10" step="1">
						       			[ <a href="#">${ i }</a> ]
						      			</c:forEach>
									    </div>
									</td>
								</tr>
								<tr>
									<td colspan="4" style="border-top:1px solid white;">
										<div id="search">
											<select style="height:23px;">
												<option>전체</option>
												<option>제목</option>
												<option>답변상태</option>
												<option>작성일</option>
											</select>
											<input type="text" name="searchBox" id="searchBox" maxlength="50" style="width:230px;"/>
											<input type="button" id="btnSearch" value="검색" style="width:45px;height:23px;"/>
										</div>
									</td>
								</tr>
								</tfoot>
							</table>
						</form>
						</div>
                        <aside class="col-md-3 col-sm-4 col-xs-12">
                            <div class="blog-list">
                                <h3><img src="http://localhost:8080/mkjg/common/prt/images/icons/customer_center.png" style="width:35px;"/><font style="margin-left:10px;">고객센터</font></h3>
                                <ul>
                                    <li><a href="custom_center_ask.do"><i class="fa fa-caret-right"></i>문의하기</a></li>
                                    <li><a href="custom_center_report.do"><i class="fa fa-caret-right"></i>신고하기</a></li>
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
