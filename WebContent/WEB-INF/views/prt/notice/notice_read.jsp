<%@page import="java.util.List"%>
<%@page import="kr.co.sist.mkjg.protector.domain.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 알림페이지 -->

<!DOCTYPE html>
<html lang="ko">
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
        <link href="http://localhost:8080/mkjg/common/prt/css/prt_style.css" rel="stylesheet">
        <link href="http://localhost:8080/mkjg/common/prt/css/style.css" rel="stylesheet">
        <link href="http://localhost:8080/mkjg/common/prt/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="stylesheet" href="http://localhost:8080/mkjg/common/prt/css/lightbox.min.css">
        <link href="http://localhost:8080/mkjg/common/prt/css/responsive.css" rel="stylesheet">
        <script src="http://localhost:8080/mkjg/common/prt/js/jquery.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/instafeed.min.js" type="text/javascript"></script>
        <script src="http://localhost:8080/mkjg/common/prt/js/custom.js" type="text/javascript"></script>
    <style type="text/css">
    #tab{border-top: 2px solid #FF4157; border-spacing: 0px; margin: 0px auto; 
    	text-align: center; float:center;}	
	#numTitle{width: 80px; text-align: center;}			
	#subjectTitle{width: 350px; text-align: center;}			
	#writerTitle{width: 100px; text-align: center;}			
	#inputTitle{width: 120px; text-align: center;}			
	#notice_content{width: 650px; text-align: left;}
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
                                    <!--<a href="index.html"><img src="http://localhost:8080/mkjg/common/prt/images/logo.png" alt="logo"></a>-->
                                    <a href="prt_index.do"><img src="http://localhost:8080/mkjg/common/prt/images/icons/picon.png" width="50"/><span style="font-size:45px;">MKJG</span></a>
                                </div>                       
                            </div>
                            <div class="col-sm-6 visible-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">Book Now</button></div>
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
                                            <li><a data-hover="HOME" class="active" href="http://localhost:8080/mkjg/prt_index.do"><span>HOME</span></a></li>
                                            <li><a data-hover="알림"  href="http://localhost:8080/mkjg/prt_notice.do"><span>알림</span></a></li>
                                            <li><a data-hover="병원 찾기"  href="http://localhost:8080/mkjg/cln_search.do"><span>병원 찾기</span></a></li>
                                            <li><a data-hover="고객 센터" href="http://localhost:8080/mkjg/custom_center_ask.do"><span>고객 센터</span></a></li>
                                            <li><a data-hover="마이 페이지" href="http://localhost:8080/mkjg/mypage_history.do"><span>마이 페이지</span></a></li>
                                            <li><a data-hover="참조" href="http://localhost:8080/mkjg/reference.do"><span>참조</span></a></li>
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
            <section class="image-head-wrapper" style="background-image: url('http://localhost:8080/mkjg/common/prt/images/prt/intro_banner1.png');">
                <div class="inner-wrapper">
                </div>
            </section>
            <div class="clearfix"></div>

            <section class="resort-overview-block">
                <div class="container">
                    <div class="row">
		<div id="notice_content">
		<table id="tab" style="margin:0px auto; float:center; text-align: center;">
			<thead>
			<tr>
				<th id="numTitle">번호</th>
				<th id="subjectTitle">제목</th>
				<th id="writerTitle">작성자</th>
				<th id="inputTitle">작성일</th>
			</tr>
			</thead>
			<tbody>
		<tr>
			<td><c:out value="${ notice.not_seq }"/></td>
			<td class="title"><c:out value="${ notice.ntitle }"/></td>
			<td><c:out value="관리자"/></td>
			<td><c:out value="${ notice.reg_date }"/></td>
		</tr>
		<tr>
		<td colspan="4" style="height:300px;"><c:out value="${ notice.ntext }"/></td>
		</tr>
			</tbody>
		</table>
		</div>
		<div id="List" style="text-align: center;">
		<a href="javascript:history.back()">
		<input type="button" value="목록" class="btn" style="margin:0px auto;"/>
		</a>
		</div>
		
                    </div>
                </div>
            </section>

            <!---footer--->
            <footer>
				<div>
                    <div class="copyright">
                        &copy; 2018 All right reserved. Class4_Group4</a>
                    </div>

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
