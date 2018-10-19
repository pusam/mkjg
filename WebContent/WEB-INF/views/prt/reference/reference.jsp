<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--Template Name: vacayhome
File Name: gallery.html
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
        <script src="http://211.63.89.152/mkjg/common/prt/js/jquery.imagesloaded.js"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/masonry.pkgd.min.js"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/instafeed.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/custom.js" type="text/javascript"></script>
        <style>
            .grid {
                background: rgba(0,0,0,0);
            }
            /* clear fix */
            .grid:after {
                content: '';
                display: block;
                clear: both;
            }
            /* ---- .grid-item ---- */
            .grid-sizer,
            .grid-item {
                width: 33.34%;
            }
            .grid-item {
                float: left;
            }
            .grid-item img {
                display: block;
                max-width: 100%;
            }
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
            <section class="image-head-wrapper">
                <div class="inner-wrapper" style="/* border:4px solid #333; */ color:white; border-top:4px solid #D7E4BD;border-bottom:4px solid #D7E4BD;">
                    <h2>참조 사이트</h2>
                </div>
            </section>
            <div class="clearfix"></div>

            <section class="gallery-block">
                <div class="container">
                    <div class="row">
                        <div class="grid hover-effect">
                            <div class="grid-sizer"></div>
                            <div class="grid-item percent37 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery1-1.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery1.png" class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent25 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery2-2.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery2.png" class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent37 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery3-3.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery3.png" class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent25 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery4-4.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery4.png" class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent37 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery5-5.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery5.png" class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent20 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery6-6.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery6.png" class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent20 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery7-7.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery7.png" class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent20 gallery-image">
                                <a class="example-image-link img-responsive" href="http://211.63.89.152/mkjg/common/prt/images/gallery8-8.jpg" data-lightbox="example-1"><img src="http://211.63.89.152/mkjg/common/prt/images/gallery8.png" class="img-responsive" alt="gallery1"></a> 
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
        <script>
            var grid = document.querySelector('.grid');

            var msnry = new Masonry(grid, {
                itemSelector: '.grid-item',
                columnWidth: '.grid-sizer',
                percentPosition: true
            });

            imagesLoaded(grid).on('progress', function () {
                // layout Masonry after each image loads
                msnry.layout();
            });
        </script>
    </body>
</html>
