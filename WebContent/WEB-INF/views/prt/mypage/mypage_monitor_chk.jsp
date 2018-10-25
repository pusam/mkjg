<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--Template Name: vacayhome
File Name: rooms.html
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
        <title>vacayhome</title>

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


</script>    
<style type="text/css">

#titleBar{width:1150px;font-size: 30px;font-weight: 900;/* border-bottom:1px solid #333; */margin-bottom:40px;padding-bottom:15px;}
#tab{width:1000px; /* border:1px solid #333; */margin:0px auto;margin-bottom:40px;}

th{text-align:center;font-size:20px;}
td{height:40px;}    
</style>
    </head>
    <body>
        <div id="page">
            <!---header top---->
            <header class="header-container">
                <div class="container">
                    <div class="top-row">
                        <div class="row">
                            <div class="col-md-2 col-sm-6 col-xs-6">
                                <div id="logo">
                                    <!--<a href="index.html"><img src="images/logo.png" alt="logo"></a>-->
                                     <a href="index.do"><img src="http://localhost:8080/mkjg/common/prt/images/icons/icon.png"/><span style="font-size:40px;">MKJG</span></a>
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
            <section class="image-head-wrapper" style="background-image: url('http://localhost:8080/mkjg/common/prt/images/banner.jpg');">
                <div class="inner-wrapper" style="/* border:4px solid #333; */color:white; border-top:4px solid #B9CDE5;border-bottom:4px solid #B9CDE5;">
                    <h2>마이페이지</h2>
                </div>
            </section>
            <div class="clearfix"></div>

            <!--gallery block--->
            <section class="gallery-block gallery-front">
                <div class="container">
                	<div id="titleBar"><img src="http://localhost:8080/mkjg/common/prt/images/icons/cctv.png" style="width:40px;margin-right:10px;margin-bottom:5px;">모니터링</div>
                	<table id="tab">
						<tr>
							<th>병원명</th>
							<td><input type="text" id="clnName" readonly="readonly" style="width:300px;height:30px;"></td>
							<td rowspan="4" style="border:1px solid #333; width:500px; height:350px;"></td>
						</tr>                	
						<tr>
							<th>사업자번호</th>
							<td><input type="text" id="busiNum" readonly="readonly" style="width:300px;height:30px;" maxlength="10"></td>
						</tr>                	
						<tr>
							<th>주소</th>
							<td><input type="text" id="addr" readonly="readonly" style="width:300px;height:30px;"></td>
						</tr>                	
						<tr>
							<th>전화번호</th>
							<td><input type="text" id="phone" readonly="readonly" style="width:300px;height:30px;"></td>
						</tr>                	
                	</table>
                	<div style="font-size:25px; font-weight: 800;margin-bottom:15px;">미리보기</div>
                    <div class="row" style="border-top:1px solid #333; padding-top:30px;">
                        
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="http://localhost:8080/mkjg/common/prt/images/room1.png">
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="http://localhost:8080/mkjg/common/prt/images/room1.png" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>delux room</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="http://localhost:8080/mkjg/common/prt/images/room2.png">
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="http://localhost:8080/mkjg/common/prt/images/room2.png" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>delux room</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="http://localhost:8080/mkjg/common/prt/images/room3.png">
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="http://localhost:8080/mkjg/common/prt/images/room3.png" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>delux room</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src="http://localhost:8080/mkjg/common/prt/images/room4.png">
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href="http://localhost:8080/mkjg/common/prt/images/room4.png" data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>delux room</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

           
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
