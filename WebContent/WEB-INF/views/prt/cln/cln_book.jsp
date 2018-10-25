<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 병원예약 페이지 -->

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
    	#clinic_content{width:1000px; float:center; margin:0px auto; text-align:center;}
    	#cln_book_tab{text-align: center; margin:0px auto; width:500px;}
    	#cln_book_bottom{text-align: center; margin:0px auto; width:500px;}
    	
    	.titletab{width:100px; font-size:14px; text-align: left; padding:3px;}
    	.contenttab{width:200px; font-size:16px; text-align: left; padding:3px;}
    	.imgtab{width:70px; height:70px; font-size:16px;}
    	.clnhead{width:80px; font-size:14px; margin-left:15px; margin-right:15px; margin-bottom:25px;}
    	.book_calendar{width:280px; height:250px;}
    	.btndiv{margin-top:20px; float:center; margin:0px auto;}
    	
    	#clnlabel{width:250px; font-size:16px; margin-left:15px; margin-bottom:25px; border-radius: 5px; border:1px solid #333; text-align: center; padding:3px;}
    	#clnstar{width:170px; margin-left: 85px;}
    	#clnbook{margin-left: 30px;}
    	
    	th,td{height:25px;}
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
                                    <a href="prt_index.do"><img src="http://localhost:8080/mkjg/common/prt/images/icons/cicon.png" width="50"/><span style="font-size:45px;">MKJG</span></a>
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
                                            <li><a data-hover="HOME" class="active" href="http://localhost:8080/mkjg/prt/index.jsp"><span>HOME</span></a></li>
                                            <li><a data-hover="알림"  href="http://localhost:8080/mkjg/prt/notice.jsp"><span>알림</span></a></li>
                                            <li><a data-hover="병원찾기"  href="http://localhost:8080/mkjg/prt/search_clinic.jsp"><span><b>병원찾기</b></span></a></li>
                                            <li><a data-hover="고객센터" href="http://localhost:8080/mkjg/prt/custom_center.jsp"><span>고객센터</span></a></li>
                                            <li><a data-hover="마이페이지" href="http://localhost:8080/mkjg/prt/mypage.jsp"><span>마이페이지</span></a></li>
                                            <li><a data-hover="참조" href="http://localhost:8080/mkjg/prt/reference.jsp"><span>참조</span></a></li>
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
            <section class="image-head-wrapper" style="background-image: url('http://localhost:8080/mkjg/common/prt/images/cbanner.png');">
                <div class="inner-wrapper">
                </div>
            </section>
            <div class="clearfix"></div>

            <section class="resort-overview-block">
                <div class="container">
                    <div class="row">
					<div id="clinic_content">
						<div id="clinic_info">
						<label id="clnlabel">병원상세정보</label>
						<img src="http://localhost:8080/mkjg/common/prt/images/prt/star4.png" id="clnstar"/><br/>
						<label id="clnname" class="clnhead">쌍용병원38</label>
						<a href="cln_review.do"><label id="clnreview" class="clnhead">리뷰</label></a>
						<a href="cln_ask.do"><label id="clnask" class="clnhead">문의하기</label></a>
						<a href="cln_book.do"><input type="button" class="btn" id="clnbook" value="예약하기"/><br/></a>
						<table id="cln_book_tab">
						<tr>
							<th> </th>
							<th> </th>
							<th> </th>
						</tr>
						<tr>
							<td class="book_calendar" rowspan="6"><img src="http://localhost:8080/mkjg/common/prt/images/prt/calendar.png" /></td>
							<td class="titletab">예약자명</td>
							<td class="contenttab">고객1</td>
						</tr>
						<tr>
							<td class="titletab">예약날짜</td>
							<td class="contenttab">2018-10-16</td>
						</tr>
						<tr>
							<td class="titletab">전화번호</td>
							<td class="contenttab">02-000-0038</td>
						</tr>
						<tr>
							<td class="titletab">동물종류</td>
							<td class="contenttab">강아지</td>
						</tr>
						<tr>
							<td class="titletab">동물명</td>
							<td class="contenttab">도기</td>
						</tr>
						<tr>
							<td class="titletab">나이/개월</td>
							<td class="contenttab">7개월</td>
						</tr>
						</table>
						<div>
							<table id="cln_book_bottom">
								<tr>
								<td class="titletab" style="width:100px;height:100px;">유의사항</td>
								<td style="width:390px;height:100px;">겁이 많아요 특히 큰 소리나면 뛰어가요</td>
								</tr>
							</table>
						</div>
						<div class="btndiv" style="margin-top:20px;">
						<input type="button" id="bookbtn" value="예약하기" class="btn"/>    
						<input type="button" id="exitbtn" value="취소" class="btn"/>
						</div>
						</div>
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
