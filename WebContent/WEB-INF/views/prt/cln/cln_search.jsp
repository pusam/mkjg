<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 병원찾기 페이지 -->

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="http://211.63.89.152/mkjg/common/prt/images/icons/picon.png"/>
        <title>맡겨주개</title>

        <!-- Bootstrap core CSS -->
        <link href="http://211.63.89.152/mkjg/common/prt/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://211.63.89.152/mkjg/common/prt/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="http://211.63.89.152/mkjg/common/prt/css/prt_style.css" rel="stylesheet">
        <link href="http://211.63.89.152/mkjg/common/prt/css/style.css" rel="stylesheet">
        <link href="http://211.63.89.152/mkjg/common/prt/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="stylesheet" href="http://211.63.89.152/mkjg/common/prt/css/lightbox.min.css">
        <link href="http://211.63.89.152/mkjg/common/prt/css/responsive.css" rel="stylesheet">
        <script src="http://211.63.89.152/mkjg/common/prt/js/jquery.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/instafeed.min.js" type="text/javascript"></script>
        <script src="http://211.63.89.152/mkjg/common/prt/js/custom.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(function(){
	$("#sido").change(function() {
		//자주 사용해야해서 변수 지정
		var sido=$("#sido").val();
		if(sido!="none"){
			$.ajax({
				url:"select_sigungu.do",
				data:"sido="+sido,
				type:"get",
				dataType:"json",
				//async://동기(응답이 오고난 후 success),비동기(응답이 오기전에 success)
				error:function(xhr){
					console.log("에러 : "+xhr.status+"이유 : "+xhr.statusText)
				},
				success:function(json_obj){
					if(json_obj.result){
						var sigunguSel=document.getElementById("sigungu");
						sigunguSel.length=1;//데이터가 중복이 되지 않게 초기화 시켜준다.
						
						$.each(json_obj.data,function(i, data){
							sigunguSel.options[i+1]=new Option(data.sigungu/*보여질 값*/,data.sigungu/*value 값*/);
						});
					}else{
						alert(sido+"로 조회한 결과가 존재하지 않습니다.");
					}//end else
				}//success
			});//ajax
		}else{
			var sigunguSel=document.getElementById("sigungu");
			sigunguSel.length=1;//데이터가 중복이 되지 않게 초기화 시켜준다.
			
			$("#none").show();
			$(".section_data").remove();
			
		}//end else
			
	});//change

	
	$("#search_all").click(function() {
		//자주 사용해야해서 변수 지정
		var sigungu=$("#sigungu").val();
		if(sigungu!="none"){
			$.ajax({
				url:"select_cln.do",
				data:"sigungu="+sigungu,
				type:"get",
				dataType:"json",
				//async://동기(응답이 오고난 후 success),비동기(응답이 오기전에 success)
				error:function(xhr){
					console.log("에러 : "+xhr.status+"이유 : "+xhr.statusText)
				},
				success:function(json_obj){
				$("#none").hide(); //숨기기
				$(".section_data").remove(); //지우기
					if(json_obj.result){
						$.each(json_obj.data,function(i, data){
							$("#allTab:last")
							.append("<tr class='section_data'><td>["+
									data.sido+" "+data.sigungu+"] </td><td> "
									+data.cln_name+"</td></tr>");
						});
					}else{
						$("#allTab:last")
						.append("<tr class='section_data'><td colspan='2'>"+
								sigungu+"(으)로 조회한 결과가 존재하지 않습니다.<br/>"+"</td></tr>");
					}//end else
				}//success
			});//ajax
		}//end if
	});//change
	
	$("#search_night").click(function() {
		//자주 사용해야해서 변수 지정
		var sigungu=$("#sigungu").val();
		if(sigungu!="none"){
			$.ajax({
				url:"search_cln.do",
				data:"sigungu="+sigungu,
				type:"get",
				dataType:"json",
				//async://동기(응답이 오고난 후 success),비동기(응답이 오기전에 success)
				error:function(xhr){
					console.log("에러 : "+xhr.status+"이유 : "+xhr.statusText)
				},
				success:function(json_obj){
				$("#none").hide(); //숨기기
				$(".section_data").remove(); //지우기
					if(json_obj.result){
						$.each(json_obj.data,function(i, data){
							$("#nightTab:last")
							.append("<tr class='section_data'><td>["+
									data.sido+" "+data.sigungu+"] </td><td> "
									+data.cln_name+"</td></tr>");
						});
					}else{
						$("#nightTab:last")
						.append("<tr class='section_data'><td colspan='2'>"+
								sigungu+"(으)로 조회한 결과가 존재하지 않습니다.<br/>"+"</td></tr>");
					}//end else
				}//success
			});//ajax
		}//end if
	});//change
	
});//ready

</script>
    
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
            <section class="image-head-wrapper" style="background-image: url('http://211.63.89.152/mkjg/common/prt/images/cbanner.png');">
                <div class="inner-wrapper">
                </div>
            </section>
            <div class="clearfix"></div>

            <!--gallery block--->
            <section class="gallery-block gallery-front">
                <div class="container">
                    <div class="row">
                    	<div class="col-md-6 col-sm-12 col-xs-12 remove-padd-right">
                            <div class="side-B">
                                <div class="product-desc-side">
                                    <h3><a href="cln_night.do">야간진료병원 찾기</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="col-md-3 col-sm-12 remove-padd-left">
                            <div class="side-C">
                                <div class="product-desc-side">
                                    <h3><a href="cln_all.do">병원 찾기</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </section>


	<!-- Start Content -->
	<div class="content">
	</div>



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
