<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%--상단 공통 페이지 외부 포함 파일 불러오기 --%>

<div class="video-wrap">
	<video src="./resources/video/gonjo.mp4" controls></video>
</div>

<div class="detail-top-wrap">
	<div class="poster">
		<img src="./resources/images/main_movie/gongjo_sub.png" alt="공조포스터">
	</div>
	<!-- poster -->
	<div class="detail-gongjo">
		<div class="tit-info">
			<div class="star-review"></div>
			<strong class="gongjo-tit">공조2: 인터내셔널</strong>
		</div>
		<!-- tit-info -->
		<ul class="detail-info1">
			<li class="sub-info1" style="cursor: pointer;"><em>관람객 평점</em> <strong>9.3</strong>
			</li>
			<li class="sub-info2"><em>예매율 1위</em> <strong>24.8%</strong></li>
			<li class="sub-info3"><em>누적관객수</em> <strong>5,838,905</strong>
				<em>명</em></li>
		</ul>
		<hr>
		<!-- detail-info1 -->
		<ul class="detail-info2">
			<li class="sub-info4"><em>장르</em> <strong><em>액션
						코미디</em> <em>2022.09.07 개봉</em> <em>129분</em></strong></li>
			<li class="sub-info5"><em>감독</em> <strong>이석훈</strong></li>
			<li class="sub-info6"><em>출현</em> <strong>현빈, 유해진, 임윤아,
					다니엘 헤니, 진선규</strong></li>
		</ul>
		<!-- detail-info2 -->
		<div class="detail-botton">
			<img id="click-like" src="./resources/images/main_movie/icon2.svg">
			<div id="booking-btm">
				<a href="#">예매하기</a>
			</div>
		</div>
		<!-- detail-botton -->
	</div>
	<!-- detail-gongjo -->
</div>
<!-- detail-top-wrap -->

<div class="reviews">
	<div class="review-tit">
		평점 및 관람평(4,032)<a href="#open_ly" class="write_mycom com_open">내
			평점 등록</a>
	</div>
	<hr>
	<!-- 평점주기 레이어 -->
	<div class="com_ly" id="open_ly" style="display: none;">
		<strong class="ly_tit">내 코멘트 등록</strong>
		<div class="ly_inner">
			<div class="recom">
				<strong class="com_tit">공조2: 인터내셔널</strong> <img
					src="./resources/images/main_movie/thumbsup.png" alt="추천"
					class="thumbsup">
			</div>
			<!-- recom -->
		</div>
		<!-- ly_inner -->
		<form method="post" action="com_write_ok"
			onsubmit="return com_check();">
			<div class="input_request">
				<input type="hidden" name="movienum" value="1">
				<input type="hidden" name="moviename" value="공조2">
				<textarea name="cont_com" id="cont_com" rows="5" cols="80" placeholder="코멘트를 입력해주세요."></textarea>
			</div>
			<!-- input_request -->
				
			<input type="submit" class="btn_complet" value="확인">
			<input type="reset" value="취소" class="btn_cancel" onclick="$('#cont_com').focus();">
		</form>
	</div>
	<!-- com_ly -->

   <script>
   let target=document.querySelector('.com_open');
   let btnPopClose=document.querySelector('.com_ly .btn_cancel');
   let targetID;

   target.addEventListener('click',function(event){
   	targetID=this.getAttribute('href');
   	document.querySelector(targetID).style.display='block';
   });
   
   btnPopClose.addEventListener('click',function(event){
	  this.parentNode.parentNode.style.display='none'; 
   });
   </script>
</div>



<%@ include file="../include/footer.jsp"%>