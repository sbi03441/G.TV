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
												<c:if test="${!empty mlist}">
													<c:forEach var="m" items="${mlist}">
														<li>
															<button type="button" id="movie_btn_0${m.movienum}" value="_0${m.movienum}" class="movie">
																<span>${m.moviename}</span>
															</button>
														</li>
													</c:forEach>
												</c:if>
											</ul>

											
										</div>
									</div>
								</div>
							</div>
						</div>
						
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
								<c:if test="${!empty region}">
									<c:forEach var="re" items="${region}">
										<input type="radio" name="tabmenu" id="tab0${re.regionnum}"> 
										<label for="tab0${re.regionnum}">${re.regionname}</label>
									</c:forEach>
								</c:if>
								<div class="theaterbox box1">
									<ul>
										<c:if test="${!empty rlist}">
											<c:forEach var="r" items="${rlist}">
												<c:if test="${r.regionnum == 1}">
												<li>
													<button type="button" id="theater_seo_btn_${r.theaternum}"
														value="_${r.theaternum}" class="theater_bt">
														<span>${r.branchname}</span>
													</button>
												</li>
												</c:if>
											</c:forEach>
										</c:if>
									</ul>
								</div>
								<div class="theaterbox box2">
									<ul>
										<c:if test="${!empty rlist}">
											<c:forEach var="r" items="${rlist}">
												<c:if test="${r.regionnum == 2}">
												<li>
													<button type="button" id="theater_seo_btn_${r.theaternum}"
														value="_${r.theaternum}" class="theater_bt">
														<span>${r.branchname}</span>
													</button>
												</li>
												</c:if>
											</c:forEach>
										</c:if>
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
											<div>${dayWeekList[1].year}qweqweqweqweq</div>
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
											<span class="span-dayweek">금</span> <span class="span-day">10</span>
										</button>
									</li>
									<li class="li-day">
										<button id="day-btn_11" class="li-day-btn" value="_11">
											<span class="span-dayweek sat">토</span> <span class="span-day sat">11</span>
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
										<button type=button id="hour_btn_1" value="_1"
											class="hour_btn">
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
										<button type=button id="hour_btn_2" value="_2"
											class="hour_btn">
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
										<button type=button id="hour_btn_3" value="_3"
											class="hour_btn">
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
										<button type=button id="hour_btn_4" value="_4"
											class="hour_btn">
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