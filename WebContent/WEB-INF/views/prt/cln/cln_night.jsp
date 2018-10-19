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
        <link rel="icon" href="http://211.63.89.152/mkjg/common/prt/images/icons/cicon.png"/>
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
					if(json_obj.sido){
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

	$("#search_night").click(function() {
		//자주 사용해야해서 변수 지정
		var sigungu=$("#sigungu").val();
		if(sigungu!="none"){
			$.ajax({
				url:"result_cln.do",
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
					if(json_obj.data){
						$.each(json_obj.data,function(i, data){
							$("#nightTab:last")
							.append("<tr class='section_data' id='nightCheck'><td>["+
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bdc7e671cf82d775acdb8587bb631030"></script>
<script>
window.onload=function(){
	
	var positions=[];
	/*async:false 비동기로 동작하지 않을 때, 
	 * 서버로 요청을 보내고 응답이 완료되면 success를 호출하겠습니다.
	 *async:true 비동기로 동작할 때,
	 * 서버로 요청을 보내고 응답이 완료되기 전, success를 호출하겠습니다.
	 */
	var init_lat="", init_lng="";
	$.ajax({
		url:"cln_night.do",
		data:"loc=2",
		dataType:"json",
		type:"get",
		async:false,
		error:function(xhr){
			console.log("에러: "+xhr.status+"메세지: "+xhr.statusText);
		},
		success:function(json_arr){
			$.each(json_arr,function(i,json){
				if(i==0){
					init_lat=json.lat;
					init_lng=json.lng;
				}//end if
				
				positions.push(eval("({title:'"+json.title
					+"', latlng:new daum.maps.LatLng("+json.lat+","
					+json.lng+")}"+")"));
			});//each
		}//success
	});//ajax
	
	var mapContainer = document.getElementById('night_map'), // 지도를 표시할 div
    mapOption = { 
       center: new daum.maps.LatLng(37.4992940,127.0331880), // 지도의 중심좌표
       //center: new daum.maps.LatLng(init_lat,init_lng), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 title 객체 배열입니다 


 var positions = [

	 
	 {
        title: '쌍용교육센터', 
        latlng: new daum.maps.LatLng(37.4992940,127.0331880)
    },
    {
        title: '탄', 
        latlng: new daum.maps.LatLng(37.4988490,127.0346396)
    },
    {
        title: '한식뷔페', 
        latlng: new daum.maps.LatLng(37.5007968,127.0348690)
    },
    {
        title: '가조쿠',
        latlng: new daum.maps.LatLng(37.5012087,127.0358068)
    },
    {
        title: '미스터피자',
        latlng: new daum.maps.LatLng(37.5012992,127.0350534)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}
	
}
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
	<div class="content" style="height:800px;">
		<!-- Start Content -->
		<div id="night_list_map"  style="width:1100px;height:600px;float:center;margin:0px auto;">
		<div class="search_clinic_box">
		<form name="clnFrmN" action="cln_search.do" method="post">
		<input type="hidden" name="clnFlag" />
		<label>야간 지역 선택</label><br/>
			<select name="sido" id="sido">
			<option value="none">-----------</option>
			<c:forEach items="${sido_list}" var="list">
			<option value="${ list }"><c:out value="${ list }" /></option>
			</c:forEach>
			</select>
			
			<select name="sigungu" id="sigungu">
				<option value="none">-----------</option>
			</select>
			
			<input type="button" value="검색" class="btn" id="search_night" />
		</form>
		<div id="resultN">
		<table id="nightTab">
		<tr>
			<th class="sectionTitle">지역</th>
			<th class="clnNameTitle">병원명</th>
		</tr>
		<tr id="none">
			<td colspan="2" align="center">
				<br/>
				지역을 선택해주세요.
				<br/>
			</td>
		</tr>
		
		</table>
		
		</div>
		</div>
		
		
	<div class="map" id="night_map">
</div>
</div>

		<!-- End Content -->
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
