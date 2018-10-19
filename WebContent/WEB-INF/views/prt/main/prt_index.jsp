<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- prt 메인화면 -->
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
                                    <a href="prt_index.do"><img src="http://211.63.89.152/mkjg/common/prt/images/icons/cicon.png" width="50"/><span style="font-size:45px;">MKJG</span></a>
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
            <div id="myCarousel1" class="carousel slide" data-ride="carousel"> 
                <!-- Indicators -->

                <ol class="carousel-indicators">
                    <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel1" data-slide-to="1"></li>
                    <li data-target="#myCarousel1" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active"> <img src="http://211.63.89.152/mkjg/common/prt/images/prt/intro_banner1.png" style="width:100%; height: 500px" alt="First slide">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item"> <img src="http://211.63.89.152/mkjg/common/prt/images/prt/intro_banner2.png" style="width:100%; height: 500px" alt="Second slide">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item"> <img src="http://211.63.89.152/mkjg/common/prt/images/prt/intro_banner3.png" style="width:100%; height: 500px" alt="Third slide">
                        <div class="carousel-caption">
                        </div>
                    </div>

                </div>
                <a class="left carousel-control" href="#myCarousel1" data-slide="prev"> <img src="http://211.63.89.152/mkjg/common/prt/images/icons/left-arrow.png" onmouseover="this.src = 'http://211.63.89.152/mkjg/common/prt/images/icons/left-arrow-hover.png'" onmouseout="this.src = 'http://211.63.89.152/mkjg/common/prt/images/icons/left-arrow.png'" alt="left"></a>
                <a class="right carousel-control" href="#myCarousel1" data-slide="next"><img src="http://211.63.89.152/mkjg/common/prt/images/icons/right-arrow.png" onmouseover="this.src = 'http://211.63.89.152/mkjg/common/prt/images/icons/right-arrow-hover.png'" onmouseout="this.src = 'http://211.63.89.152/mkjg/common/prt/images/icons/right-arrow.png'" alt="left"></a>

            </div>

            <!----resort-overview--->
            <section class="resort-overview-block">
                <div class="container" style="5px solid #333;">
                	<div class="blog-block-slider-fix-image" >
                    <div id="myCarousel2" class="carousel slide" data-ride="carousel">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12 remove-padd-right" >
                        	<div class="side-A">
                                <div class="product-desc-side">
                                    <h3><a>24시병원</a></h3>
                                    <p><c:forEach items="${night_cln_list}" var="list">
					<option value="${ list.bln }"><c:out value="[${ list.sido } ${ list.sigungu }] ${ list.cln_name }" />
					</option>
								</c:forEach></p>
                                    <div class="links"><a href="http://211.63.89.152/mkjg/cln_night.do">더보기</a></div>
                                </div>
                            </div>
                            <div class="side-B">
                                <div class="product-desc-side">
                                    <h3><a>신규병원</a></h3>
                                    <p><c:forEach items="${new_cln_list}" var="list">
					<option value="${ list.bln }"><c:out value="[${ list.sido } ${ list.sigungu }] ${ list.cln_name }" />
					</option>
								</c:forEach></p>
                                    <div class="links"><a href="http://211.63.89.152/mkjg/cln_all.do">더보기</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-6 col-sm-12 remove-padd-left">
                            <div class="side-A">
                                <div class="product-desc-side">
                                    <h3><a>알림               </a></h3>
                                    <p><c:forEach items="${notice_list}" var="list">
					<option value="${ list.not_seq }"><c:out value="${ list.ntitle }" />
					</option>
								</c:forEach></p>
                                    <div class="links"><a href="http://211.63.89.152/mkjg/prt_notice.do">더보기</a></div>
                                </div>
                            </div>
                            <div class="side-B">
                                <div class="product-thumb">
                                    <div class="image txt-rgt">
                                        <a class="arrow-left"><img src="http://211.63.89.152/mkjg/common/prt/images/prt/slide3.png" style="height:250px; margin-left:50px;" class="img-responsive" alt="imaga"></a>
                                    </div>
                                </div>
                            </div>
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


