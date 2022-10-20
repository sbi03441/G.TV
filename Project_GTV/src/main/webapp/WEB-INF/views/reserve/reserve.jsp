<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>

<div class="body_frame">
	<div class="inner_wrap">
		<div class="quick-reserve">
			<h2 class="reserve_title_1"
				style="font-size: 30px; color: #222; margin-left: 10px; margin-bottom: 10px; font-weight: bold;">빠른예매</h2>
		</div>
		<div class="quick-reserve-include">
			<div class="quick-reserve-area">
				<div class="movie-choice">
					<p class="tit" style="color: white;">영화</p>
					<div class="list-area">
						<div class="all-list">
							<button type="button" onclick="" class="btn-tab on" id="movieAll">전체</button>
							<div class="list">
								<div class="scroll">
									<div class="mCustomScrollBox">
										<div class="mCSB_container_1">
											<ul>
												<li><button type="button" id="movie_btn_01" value="_01"
														class="movie">
														<span>블랙 아담</span>
													</button></li>
												<li><button type="button" id="movie_btn_02" value="_02"
														class="movie">
														<span>리멤버</span>
													</button></li>
												<li><button type="button" id="movie_btn_03" value="_03"
														class="movie">
														<span>귀못</span>
													</button></li>
												<li><button type="button" id="movie_btn_04" value="_04"
														class="movie">
														<span>인생은 아름다워</span>
													</button></li>
												<li><button type="button" id="movie_btn_05" value="_05"
														class="movie">
														<span>자백</span>
													</button></li>
												<li><button type="button" id="movie_btn_06" value="_06"
														class="movie">
														<span>공조2: 인터내셔날</span>
													</button></li>
												<li><button type="button" id="movie_btn_07" value="_07"
														class="movie">
														<span>정직한 후보 2</span>
													</button></li>
												<li><button type="button" id="movie_btn_08" value="_08"
														class="movie">
														<span>미혹</span>
													</button></li>
												<li><button type="button" id="movie_btn_09" value="_09"
														class="movie">
														<span>오펀: 천사의 탄생</span>
													</button></li>

											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--  
						<div class="other-list">
							<button type="button" class="btn-tab">큐레이션</button>
							<div class="list" style="display: none;">
								<div class="scroll">
									<div class="mCustomScrollBox">
										<div class="mCSB_container">
											<ul>
												<li>영화1</li>
												<li>영화2</li>
												<li>영화3</li>
												<li>영화4</li>
												<li>영화5</li>
												<li>영화6</li>
												<li>영화7</li>
												<li>영화8</li>
												<li>영화9</li>
												<li>영화10</li>
												<li>영화11</li>
												<li>영화12</li>
												<li>영화13</li>
												<li>영화14</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						-->
					</div>
				</div>
				<div class="theater-choice">
					<div class="tit-area">
						<p class="tit">극장</p>
					</div>
					<div class="list-area">
						<div class="all-list">
							<button type="button" class="btn-tab on">전체</button>
							<div class="theater_tab">
								<input type="radio" name="tabmenu" id="tab01"> <label
									for="tab01">서울</label> <input type="radio" name="tabmenu"
									id="tab02"> <label for="tab02">경기</label> <input
									type="radio" name="tabmenu" id="tab03"> <label
									for="tab03">대전</label>

								<div class="theaterbox box1">
									<ul>
										<li><button type="button" id="theater_seo_btn_1"
												value="_1" class="theater_bt">
												<span>서울1</span>
											</button></li>
										<li><button type="button" id="theater_seo_btn_2"
												value="_2" class="theater_bt">
												<span>서울2</span>
											</button></li>
										<li><button type="button" id="theater_seo_btn_3"
												value="_3" class="theater_bt">
												<span>서울3</span>
											</button></li>
										<li><button type="button" id="theater_seo_btn_4"
												value="_4" class="theater_bt">
												<span>서울4</span>
											</button></li>
										<li><button type="button" id="theater_seo_btn_5"
												value="_5" class="theater_bt">
												<span>서울5</span>
											</button></li>
										<li><button type="button" id="theater_seo_btn_6"
												value="_6" class="theater_bt">
												<span>서울6</span>
											</button></li>
										<li><button type="button" id="theater_seo_btn_7"
												value="_7" class="theater_bt">
												<span>서울7</span>
											</button></li>
									</ul>
								</div>
								<div class="theaterbox box2">
									<ul>
										<li><button type="button" id="theater_gy_btn_1"
												value="_1" class="theater_bt">
												<span>경기1</span>
											</button></li>
										<li><button type="button" id="theater_gy_btn_2"
												value="_2" class="theater_bt">
												<span>경기2</span>
											</button></li>
										<li><button type="button" id="theater_gy_btn_3"
												value="_3" class="theater_bt">
												<span>경기3</span>
											</button></li>
										<li><button type="button" id="theater_gy_btn_4"
												value="_4" class="theater_bt">
												<span>경기4</span>
											</button></li>
										<li><button type="button" id="theater_gy_btn_5"
												value="_5" class="theater_bt">
												<span>경기5</span>
											</button></li>
										<li><button type="button" id="theater_gy_btn_6"
												value="_6" class="theater_bt">
												<span>경기6</span>
											</button></li>
										<li><button type="button" id="theater_gy_btn_7"
												value="_7" class="theater_bt">
												<span>경기7</span>
											</button></li>
									</ul>
								</div>
								<div class="theaterbox box3">
									<ul>
										<li><button type="button" id="theater_dae_btn_1"
												value="_1" class="theater_bt">
												<span>대전1</span>
											</button></li>
										<li><button type="button" id="theater_dae_btn_2"
												value="_2" class="theater_bt">
												<span>대전2</span>
											</button></li>
										<li><button type="button" id="theater_dae_btn_3"
												value="_3" class="theater_bt">
												<span>대전3</span>
											</button></li>
										<li><button type="button" id="theater_dae_btn_4"
												value="_4" class="theater_bt">
												<span>대전4</span>
											</button></li>
										<li><button type="button" id="theater_dae_btn_5"
												value="_5" class="theater_bt">
												<span>대전5</span>
											</button></li>
										<li><button type="button" id="theater_dae_btn_6"
												value="_6" class="theater_bt">
												<span>대전6</span>
											</button></li>
										<li><button type="button" id="theater_dae_btn_7"
												value="_7" class="theater_bt">
												<span>대전7</span>
											</button></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="other-list">
							<button type="button" class="btn-tab">특별관</button>
						</div>
					</div>
				</div>
				<div class="date-choice" style="width: 112px;">
					<div class="tit-area">
						<p class="tit">날짜</p>
					</div>
					<div class="date-schedule">
						<!--  <input class="re_date" type="date">-->
						<div class="date-list">
							<div>
								<ul class="date-list-ul">
									<li class="li-month">
										<div>
											<span class="span-year">2022</span> <span class="span-month">10</span>
											<div></div>
										</div>
									</li>
									<li class="li-day">
										<button id="day-btn_18" class="li-day-btn" value="_18">
											<span class="span-dayweek">화</span> <span class="span-day">18</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_19" class="li-day-btn" value="_19">
											<span class="span-dayweek">수</span> <span class="span-day">19</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_20" class="li-day-btn" value="_20">
											<span class="span-dayweek">목</span> <span class="span-day">20</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_21" class="li-day-btn" value="_21">
											<span class="span-dayweek">금</span> <span class="span-day">21</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_22" class="li-day-btn" value="_22">
											<span class="span-dayweek sat">토</span> <span
												class="span-day sat">22</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_23" class="li-day-btn" value="_23">
											<span class="span-dayweek sun">일</span> <span
												class="span-day sun">23</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_24" class="li-day-btn" value="_24">
											<span class="span-dayweek">월</span> <span class="span-day">24</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_25" class="li-day-btn" value="_25">
											<span class="span-dayweek">화</span> <span class="span-day">25</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_26" class="li-day-btn" value="_26">
											<span class="span-dayweek">수</span> <span class="span-day">26</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_27" class="li-day-btn" value="_27">
											<span class="span-dayweek">목</span> <span class="span-day">27</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_28" class="li-day-btn" value="_28">
											<span class="span-dayweek">금</span> <span class="span-day">28</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_29" class="li-day-btn" value="_29">
											<span class="span-dayweek sat">토</span> <span
												class="span-day sat">29</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_30" class="li-day-btn" value="_30">
											<span class="span-dayweek sun">일</span> <span
												class="span-day sun">30</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_31" class="li-day-btn" value="_31">
											<span class="span-dayweek">월</span> <span class="span-day">31</span>
										</button>
									</li>
									<li class="li-month">
										<div>
											<span class="span-year">2022</span> <span class="span-month">11</span>
											<div></div>
										</div>
									</li>
									<li class="li-day">
										<button id="day-btn_1" class="li-day-btn" value="_1">
											<span class="span-dayweek">화</span> <span class="span-day">1</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_2" class="li-day-btn" value="_2">
											<span class="span-dayweek">수</span> <span class="span-day">2</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_3" class="li-day-btn" value="_3">
											<span class="span-dayweek">목</span> <span class="span-day">3</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_4" class="li-day-btn" value="_4">
											<span class="span-dayweek">금</span> <span class="span-day">4</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_5" class="li-day-btn" value="_5">
											<span class="span-dayweek sat">토</span> <span
												class="span-day sat">5</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_6" class="li-day-btn" value="_6">
											<span class="span-dayweek sun">일</span> <span
												class="span-day sun">6</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_7" class="li-day-btn" value="_7">
											<span class="span-dayweek">월</span> <span class="span-day">7</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_8" class="li-day-btn" value="_8">
											<span class="span-dayweek">화</span> <span class="span-day">8</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_9" class="li-day-btn" value="_9">
											<span class="span-dayweek">수</span> <span class="span-day">9</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_10" class="li-day-btn" value="_10">
											<span class="span-dayweek">금</span> <span class="span-day">4</span>
										</button>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="hour-choice">
					<div class="tit-area">
						<p class="tit">시간</p>
					</div>
					<div class="hour-schedule">
						<div class="movie-schedule-area">
							<div class="result">
								<ul>

									<li class="hour_color">
										<button type=button id="hour_btn_1" value="_1" class="hour_btn">
											<span class="time"> <strong> 08:50 </strong>
											</span> <span class="title"> <strong> 컴백홈 </strong>
											</span>
											<div class="info">
												<span class="theater"> 강남 <br> 3관
												</span> <span class="seat"> <strong class="now">123</strong>
													<span>/</span> <em class="all">123</em>
												</span>
											</div>
										</button>
									</li>

									<li class="hour_color">
										<button type=button id="hour_btn_2" value="_2" class="hour_btn">
											<span class="time"> <strong> 11:50 </strong>
											</span> <span class="title"> <strong> 컴백홈 </strong>
											</span>
											<div class="info">
												<span class="theater"> 강남 <br> 4관
												</span> <span class="seat"> <strong class="now">123</strong>
													<span>/</span> <em class="all">123</em>
												</span>
											</div>
										</button>
									</li>
									<li class="hour_color">
										<button type=button id="hour_btn_3" value="_3" class="hour_btn">
											<span class="time"> <strong> 15:50 </strong>
											</span> <span class="title"> <strong> 컴백홈 </strong>
											</span>
											<div class="info">
												<span class="theater"> 강남 <br> 5관
												</span> <span class="seat"> <strong class="now">123</strong>
													<span>/</span> <em class="all">123</em>
												</span>
											</div>
										</button>
									</li>
									<li class="hour_color">
										<button type=button id="hour_btn_4" value="_4" class="hour_btn">
											<span class="time"> <strong> 19:50 </strong>
											</span> <span class="title"> <strong> 컴백홈 </strong>
											</span>
											<div class="info">
												<span class="theater"> 강남 <br> 6관
												</span> <span class="seat"> <strong class="now">123</strong>
													<span>/</span> <em class="all">123</em>
												</span>
											</div>
										</button>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="end">
					<div class="end_area">
						<div class="tit_area">
							<p class="titl">컴백홈</p>
							<p class="cate">2D</p>
						</div>
						<div class="info-area">
							<p class="theater">강남</p>
							<p class="special">3관</p>
							<p class="date">
								<span>2022.11.11</span> <span>(월)</span>
							</p>
							<div class="time">09:00~11:30</div>
							<p class="poster">
								<img src="">
							</p>
						</div>
						<div class="result-area">
							<a href="../html/reserve_2.jsp" class="result-btn"> 좌석선택 </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>