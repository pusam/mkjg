<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 병원정보 페이지 -->

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
    	#cln_info_tab{text-align: center; margin:0px auto;}
    	
    	.titletab{width:100px; font-size:14px; text-align: left;}
    	.contenttab{width:200px; font-size:16px; text-align: left;}
    	.imgtab{width:70px; height:70px; font-size:16px;}
    	.clnhead{width:80px; font-size:14px; margin-left:15px; margin-right:15px; margin-bottom:25px;}
    	
    	#clnlabel{width:250px; font-size:16px; margin-left:15px; margin-bottom:25px; border-radius: 5px; border:1px solid #333; text-align: center; padding:3px;}
    	#clnstar{width:170px; margin-left: 85px;}
    	#clnbook{margin-left: 30px;}
    	
    	th,td{height:27px;}
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
                                    <a href="index.jsp"><img src="http://211.63.89.152/mkjg/common/prt/images/icons/icon.png" width="50"/><span style="font-size:45px;">MKJG</span></a>
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
                                            <li><a data-hover="HOME" class="active" href="http://211.63.89.152/mkjg/prt/index.jsp"><span>HOME</span></a></li>
                                            <li><a data-hover="알림"  href="http://211.63.89.152/mkjg/prt/notice.jsp"><span>알림</span></a></li>
                                            <li><a data-hover="병원찾기"  href="http://211.63.89.152/mkjg/prt/search_clinic.jsp"><span><b>병원찾기</b></span></a></li>
                                            <li><a data-hover="고객센터" href="http://211.63.89.152/mkjg/prt/custom_center.jsp"><span>고객센터</span></a></li>
                                            <li><a data-hover="마이페이지" href="http://211.63.89.152/mkjg/prt/mypage.jsp"><span>마이페이지</span></a></li>
                                            <li><a data-hover="참조" href="http://211.63.89.152/mkjg/prt/reference.jsp"><span>참조</span></a></li>
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
						<a href="cln_book.do"><input type="button" class="btn" id="clnbook" value="예약하기"/><br/></a>
						<table id="cln_info_tab">
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th>  </th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<td colspan="4" rowspan="8"><img src="http://211.63.89.152/mkjg/common/prt/images/cln/cln38.png" style="float:left; text-align:left;"/></td>
							<td>  </td>
							<td class="titletab">사업자번호</td>
							<td class="contenttab">0000000038</td>
						</tr>
						<tr>
							<td>  </td>
							<td class="titletab">원장</td>
							<td class="contenttab">원장38</td>
						</tr>
						<tr>
							<td></td>
							<td class="titletab">주소</td>
							<td class="contenttab">서울 강남구 역삼동 38층</td>
						</tr>
						<tr>
							<td>  </td>
							<td class="titletab">전화번호</td>
							<td class="contenttab">02-000-0038</td>
						</tr>
						<tr>
							<td>  </td>
							<td class="titletab">운영시간</td>
							<td class="contenttab">24시</td>
						</tr>
						<tr>
							<td>  </td>
							<td class="titletab">진료과목</td>
							<td class="contenttab">외과</td>
						</tr>
						<tr>
							<td>  </td>
							<td class="titletab">미용유무</td>
							<td class="contenttab">N</td>
						</tr>
						<tr>
							<td>  </td>
							<td class="titletab">입원유무</td>
							<td class="contenttab">N</td>
						</tr>
						<tr>
							<td><img src="http://211.63.89.152/mkjg/common/prt/images/cln/cln38_0.png"/></td>
							<td><img src="http://211.63.89.152/mkjg/common/prt/images/cln/cln38_1.png"/></td>
							<td><img src="http://211.63.89.152/mkjg/common/prt/images/cln/cln38_2.png"/></td>
							<td id="clnimg4" class="imgtab"></td>
							<td>  </td>
							<td class="titletab">병원소개</td>
							<td class="contenttab">SAMPLE 병원38</td>
						</tr>
						</table>
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
