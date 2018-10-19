<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 병원리뷰 작성 페이지 -->

<!DOCTYPE html>
<html lang="ko">
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
        <link href="http://211.63.89.152/mkjg/common/prt/css/style.css" rel="stylesheet">
        <link href="http://211.63.89.152/mkjg/common/prt/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="stylesheet" href="http://211.63.89.152/mkjg/common/prt/css/lightbox.min.css">
        <link href="http://211.63.89.152/mkjg/common/prt/css/responsive.css" rel="stylesheet">
        <script src="http://211.63.89.152/mkjg/common/prt/js/jquery.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/instafeed.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/custom.js" type="text/javascript"></script>
    <style type="text/css">
    	#clinic_content{width:1000px; float:center; margin:0px auto; text-align:center;}
    	#cln_review_write_top{width:450px; height:100px; text-align: left; float:center; margin:0px auto; border:1px solid #333;}
    	#cln_review_write_content{width:450px; height:350px; text-align: left; float:center; margin:0px auto; border:1px solid #333;}
    	
    	.clnhead{width:80px; font-size:14px; margin-left:15px; margin-right:15px; margin-bottom:25px;}
    	
    	#clnlabel{width:250px; font-size:16px; margin-left:15px; margin-bottom:25px; border-radius: 5px; border:1px solid #333; text-align: center; padding:3px;}
    	#clnstar{width:170px; margin-left: 85px;}
    	#clnbook{margin-left: 30px;}
    	#indexList{margin-top: 10px;}
    	#reviewbtn{margin-top: 10px;}
	    	
    	table{border:1px solid #333; padding:5px;}
    	tr{padding:3px; border:1px solid #333; margin-top:4px;}
    	td{padding:5px; border:1px solid #333; left; margin-top:3px; text-align: left; float:top;}
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
                                    <!--<a href="index.html"><img src="http://211.63.89.152/mkjg/common/prt/images/logo.png" alt="logo"></a>-->
                                    <a href="prt_index.do"><img src="http://211.63.89.152/mkjg/common/prt/images/icons/icon.png" width="50"/><span style="font-size:45px;">MKJG</span></a>
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
                                            <li><a data-hover="HOME" class="active" href="http://211.63.89.152/mkjg/prt_index.do"><span>HOME</span></a></li>
                                            <li><a data-hover="알림"  href="http://211.63.89.152/mkjg/prt_notice.do"><span>알림</span></a></li>
                                            <li><a data-hover="병원 찾기"  href="http://211.63.89.152/mkjg/cln_search.do"><span>병원 찾기</span></a></li>
                                            <li><a data-hover="고객 센터" href="http://211.63.89.152/mkjg/custom_center_ask.do"><span>고객 센터</span></a></li>
                                            <li><a data-hover="마이 페이지" href="http://211.63.89.152/mkjg/mypage_history.do"><span>마이 페이지</span></a></li>
                                            <li><a data-hover="참조" href="http://211.63.89.152/mkjg/reference.do"><span>참조</span></a></li>
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
            <section class="image-head-wrapper" style="background-image: url('http://211.63.89.152/mkjg/common/prt/images/cbanner.png');">
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
						<img src="http://211.63.89.152/mkjg/common/prt/images/prt/star4.png" id="clnstar"/><br/>
						<label id="clnname" class="clnhead">쌍용병원38</label>
						<a href="cln_review.do"><label id="clnreview" class="clnhead">리뷰</label></a>
						<a href="cln_ask.do"><label id="clnask" class="clnhead">문의하기</label></a>
						<a href="cln_book.do"><input type="button" class="btn" id="clnbook" value="예약하기"/></a><br/>
						<table id="cln_review_write_top">
							<tr>
								<td>
								작성자<input type="text" value="고객1" readonly="readonly" /><br/>
								작성일<input type="text" value="2018.09.22" readonly="readonly" /></td>
							</tr>
							<tr>
								<td>별점<br/>
								<img src="http://211.63.89.152/mkjg/common/prt/images/prt/star4.png"/>
								</td>
							</tr>
						</table>
						<table id="cln_review_write_content">
							<tr>
								<td>리뷰내용1<br/>
								리뷰리뷰리뷰리뷰리뷰리뷰
								</td>
							</tr>
							</table>
						</div>
						<div>
						<input type="button" id="reviewbtn" value="리뷰작성하기" class="btn"/>
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
