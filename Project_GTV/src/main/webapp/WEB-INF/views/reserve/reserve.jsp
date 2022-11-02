<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
	<div class="inner-wrap">
		<div class="quick_reserve">
			<h2 class="tit">빠른예매</h2>
			<div class="seat-select-section">
				<form action="" method="post" name="reserveForm" id="reserveForm">
					<input type="hidden" id="movieTotalSel" name="movieTotalSel" value="${movietotal.movietotalnum }"/>
					<input type="hidden" id="adultSel" name="adultSel" value=""/>
					<input type="hidden" id="teenSel" name="teenSel" value=""/>
					<input type="hidden" id="seat1Sel" name="seat1Sel" value=""/>
					<input type="hidden" id="seat2Sel" name="seat2Sel" value=""/>
					<input type="hidden" id="seat3Sel" name="seat3Sel" value=""/>
					<input type="hidden" id="seat4Sel" name="seat4Sel" value=""/>
					<input type="hidden" id="seat5Sel" name="seat5Sel" value=""/>
					<input type="hidden" id="seat6Sel" name="seat6Sel" value=""/>
					<input type="hidden" id="paySel" name="paySel" value=""/>
					<input type="hidden" id="useridSel" name="useridSel" value=""/>
					
					<div class="seat-section">
						<div class="tit-util">
							<h3 class="tit small">관람인원선택</h3>
						</div>
						<div class="seat-area">
							<div class="seat-count" style="min-height:52px;">
								<div class="cell">
									<p class="txt">성인</p>
									<div class="count">
										<button type="button" class="down" onclick='count("minus")' title="성인 좌석 선택 감소">-</button>
										<div class="number">
											<button type="button" class="now" id="now" title="성인 현재 좌석 선택 수">0</button>
										</div>
										<button type="button" class="up" onclick='count("plus")' title="성인 좌석 선택 증가">+</button>
									</div>
								</div>
								<div class="cell">
									<p class="txt">청소년</p>
									<div class="count">
										<button type="button" class="down" onclick='count2("minus")' title="청소년 좌석 선택 감소">-</button>
										<div class="number">
											<button type="button" class="now" id="now2" title="청소년 현재 좌석 선택 수">0</button>
										</div>
										<button type="button" class="up" onclick='count2("plus")' title="청소년 좌석 선택 증가">+</button>
									</div>
								</div>
							</div>
							<div class="seat-layout">
								<div class="scroll">
									<div class="mCustomScrollBox">
										<div class="mSCB_container">
											<div id="seatLayout">
												
												<div>
													<div class="screen" style="position:absolute; left:281px; top:10px;">screen</div>
													<button type="button" class="btn-seat-row" title="A 행" style="position:absolute; left:236px; top:52px;">A</button>
													<button type="button" id="seat_btn_a1" value="_a1" class="seat-condition standard common" title="A1" style="position:absolute; left:281px; top:50px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_a2" value="_a2" class="seat-condition standard common" title="A2" style="position:absolute; left:301px; top:50px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_a3" value="_a3" class="seat-condition standard common" title="A3" style="position:absolute; left:321px; top:50px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_a4" value="_a4" class="seat-condition standard common" title="A4" style="position:absolute; left:349px; top:50px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_a5" value="_a5" class="seat-condition standard common" title="A5" style="position:absolute; left:369px; top:50px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_a6" value="_a6" class="seat-condition standard common" title="A6" style="position:absolute; left:389px; top:50px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_a7" value="_a7" class="seat-condition standard common" title="A7" style="position:absolute; left:409px; top:50px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_a8" value="_a8" class="seat-condition standard common" title="A8" style="position:absolute; left:429px; top:50px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_a9" value="_a9" class="seat-condition standard common" title="A9" style="position:absolute; left:449px; top:50px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_a10" value="_a10" class="seat-condition standard common" title="A10" style="position:absolute; left:477px; top:50px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_a11" value="_a11" class="seat-condition standard common" title="A11" style="position:absolute; left:497px; top:50px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_a12" value="_a12" class="seat-condition standard common" title="A12" style="position:absolute; left:517px; top:50px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="B 행" style="position:absolute; left:236px; top:72px;">B</button>
													<button type="button" id="seat_btn_b1" value="_b1" class="seat-condition standard common" title="B1" style="position:absolute; left:281px; top:70px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_b2" value="_b2" class="seat-condition standard common" title="B2" style="position:absolute; left:301px; top:70px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_b3" value="_b3" class="seat-condition standard common" title="B3" style="position:absolute; left:321px; top:70px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_b4" value="_b4" class="seat-condition standard common" title="B4" style="position:absolute; left:349px; top:70px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_b5" value="_b5" class="seat-condition standard common" title="B5" style="position:absolute; left:369px; top:70px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_b6" value="_b6" class="seat-condition standard common" title="B6" style="position:absolute; left:389px; top:70px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_b7" value="_b7" class="seat-condition standard common" title="B7" style="position:absolute; left:409px; top:70px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_b8" value="_b8" class="seat-condition standard common" title="B8" style="position:absolute; left:429px; top:70px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_b9" value="_b9" class="seat-condition standard common" title="B9" style="position:absolute; left:449px; top:70px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_b10" value="_b10" class="seat-condition standard common" title="B10" style="position:absolute; left:477px; top:70px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_b11" value="_b11" class="seat-condition standard common" title="B11" style="position:absolute; left:497px; top:70px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_b12" value="_b12" class="seat-condition standard common" title="B12" style="position:absolute; left:517px; top:70px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="C 행" style="position:absolute; left:236px; top:92px;">C</button>
													<button type="button" id="seat_btn_c1" value="_c1" class="seat-condition standard common" title="C1" style="position:absolute; left:281px; top:90px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_c2" value="_c2" class="seat-condition standard common" title="C2" style="position:absolute; left:301px; top:90px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_c3" value="_c3" class="seat-condition standard common" title="C3" style="position:absolute; left:321px; top:90px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_c4" value="_c4" class="seat-condition standard common" title="C4" style="position:absolute; left:349px; top:90px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_c5" value="_c5" class="seat-condition standard common" title="C5" style="position:absolute; left:369px; top:90px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_c6" value="_c6" class="seat-condition standard common" title="C6" style="position:absolute; left:389px; top:90px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_c7" value="_c7" class="seat-condition standard common" title="C7" style="position:absolute; left:409px; top:90px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_c8" value="_c8" class="seat-condition standard common" title="C8" style="position:absolute; left:429px; top:90px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_c9" value="_c9" class="seat-condition standard common" title="C9" style="position:absolute; left:449px; top:90px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_c10" value="_c10" class="seat-condition standard common" title="C10" style="position:absolute; left:477px; top:90px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_c11" value="_c11" class="seat-condition standard common" title="C11" style="position:absolute; left:497px; top:90px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_c12" value="_c12" class="seat-condition standard common" title="C12" style="position:absolute; left:517px; top:90px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="D 행" style="position:absolute; left:236px; top:112px;">D</button>
													<button type="button" id="seat_btn_d1" value="_d1" class="seat-condition standard common" title="D1" style="position:absolute; left:281px; top:110px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_d2" value="_d2" class="seat-condition standard common" title="D2" style="position:absolute; left:301px; top:110px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_d3" value="_d3" class="seat-condition standard common" title="D3" style="position:absolute; left:321px; top:110px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_d4" value="_d4" class="seat-condition standard common" title="D4" style="position:absolute; left:349px; top:110px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_d5" value="_d5" class="seat-condition standard common" title="D5" style="position:absolute; left:369px; top:110px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_d6" value="_d6" class="seat-condition standard common" title="D6" style="position:absolute; left:389px; top:110px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_d7" value="_d7" class="seat-condition standard common" title="D7" style="position:absolute; left:409px; top:110px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_d8" value="_d8" class="seat-condition standard common" title="D8" style="position:absolute; left:429px; top:110px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_d9" value="_d9" class="seat-condition standard common" title="D9" style="position:absolute; left:449px; top:110px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_d10" value="_d10" class="seat-condition standard common" title="D10" style="position:absolute; left:477px; top:110px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_d11" value="_d11" class="seat-condition standard common" title="D11" style="position:absolute; left:497px; top:110px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_d12" value="_d12" class="seat-condition standard common" title="D12" style="position:absolute; left:517px; top:110px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="E 행" style="position:absolute; left:236px; top:132px;">E</button>
													<button type="button" id="seat_btn_e1" value="_e1" class="seat-condition standard common" title="E1" style="position:absolute; left:281px; top:130px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_e2" value="_e2" class="seat-condition standard common" title="E2" style="position:absolute; left:301px; top:130px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_e3" value="_e3" class="seat-condition standard common" title="E3" style="position:absolute; left:321px; top:130px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_e4" value="_e4" class="seat-condition standard common" title="E4" style="position:absolute; left:349px; top:130px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_e5" value="_e5" class="seat-condition standard common" title="E5" style="position:absolute; left:369px; top:130px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_e6" value="_e6" class="seat-condition standard common" title="E6" style="position:absolute; left:389px; top:130px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_e7" value="_e7" class="seat-condition standard common" title="E7" style="position:absolute; left:409px; top:130px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_e8" value="_e8" class="seat-condition standard common" title="E8" style="position:absolute; left:429px; top:130px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_e9" value="_e9" class="seat-condition standard common" title="E9" style="position:absolute; left:449px; top:130px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_e10" value="_e10" class="seat-condition standard common" title="E10" style="position:absolute; left:477px; top:130px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_e11" value="_e11" class="seat-condition standard common" title="E11" style="position:absolute; left:497px; top:130px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_e12" value="_e12" class="seat-condition standard common" title="E12" style="position:absolute; left:517px; top:130px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="F 행" style="position:absolute; left:236px; top:152px;">F</button>
													<button type="button" id="seat_btn_f1" value="_f1" class="seat-condition standard common" title="F1" style="position:absolute; left:281px; top:150px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_f2" value="_f2" class="seat-condition standard common" title="F2" style="position:absolute; left:301px; top:150px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_f3" value="_f3" class="seat-condition standard common" title="F3" style="position:absolute; left:321px; top:150px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_f4" value="_f4" class="seat-condition standard common" title="F4" style="position:absolute; left:349px; top:150px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_f5" value="_f5" class="seat-condition standard common" title="F5" style="position:absolute; left:369px; top:150px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_f6" value="_f6" class="seat-condition standard common" title="F6" style="position:absolute; left:389px; top:150px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_f7" value="_f7" class="seat-condition standard common" title="F7" style="position:absolute; left:409px; top:150px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_f8" value="_f8" class="seat-condition standard common" title="F8" style="position:absolute; left:429px; top:150px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_f9" value="_f9" class="seat-condition standard common" title="F9" style="position:absolute; left:449px; top:150px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_f10" value="_f10" class="seat-condition standard common" title="F10" style="position:absolute; left:477px; top:150px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_f11" value="_f11" class="seat-condition standard common" title="F11" style="position:absolute; left:497px; top:150px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_f12" value="_f12" class="seat-condition standard common" title="F12" style="position:absolute; left:517px; top:150px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="G 행" style="position:absolute; left:236px; top:172px;">G</button>
													<button type="button" id="seat_btn_g1" value="_g1" class="seat-condition standard common" title="G1" style="position:absolute; left:281px; top:170px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_g2" value="_g2" class="seat-condition standard common" title="G2" style="position:absolute; left:301px; top:170px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_g3" value="_g3" class="seat-condition standard common" title="G3" style="position:absolute; left:321px; top:170px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_g4" value="_g4" class="seat-condition standard common" title="G4" style="position:absolute; left:349px; top:170px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_g5" value="_g5" class="seat-condition standard common" title="G5" style="position:absolute; left:369px; top:170px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_g6" value="_g6" class="seat-condition standard common" title="G6" style="position:absolute; left:389px; top:170px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_g7" value="_g7" class="seat-condition standard common" title="G7" style="position:absolute; left:409px; top:170px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_g8" value="_g8" class="seat-condition standard common" title="G8" style="position:absolute; left:429px; top:170px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_g9" value="_g9" class="seat-condition standard common" title="G9" style="position:absolute; left:449px; top:170px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_g10" value="_g10" class="seat-condition standard common" title="G10" style="position:absolute; left:477px; top:170px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_g11" value="_g11" class="seat-condition standard common" title="G11" style="position:absolute; left:497px; top:170px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_g12" value="_g12" class="seat-condition standard common" title="G12" style="position:absolute; left:517px; top:170px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="H 행" style="position:absolute; left:236px; top:192px;">H</button>
													<button type="button" id="seat_btn_h1" value="_h1" class="seat-condition standard common" title="H1" style="position:absolute; left:281px; top:190px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_h2" value="_h2" class="seat-condition standard common" title="H2" style="position:absolute; left:301px; top:190px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_h3" value="_h3" class="seat-condition standard common" title="H3" style="position:absolute; left:321px; top:190px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_h4" value="_h4" class="seat-condition standard common" title="H4" style="position:absolute; left:349px; top:190px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_h5" value="_h5" class="seat-condition standard common" title="H5" style="position:absolute; left:369px; top:190px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_h6" value="_h6" class="seat-condition standard common" title="H6" style="position:absolute; left:389px; top:190px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_h7" value="_h7" class="seat-condition standard common" title="H7" style="position:absolute; left:409px; top:190px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_h8" value="_h8" class="seat-condition standard common" title="H8" style="position:absolute; left:429px; top:190px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_h9" value="_h9" class="seat-condition standard common" title="H9" style="position:absolute; left:449px; top:190px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_h10" value="_h10" class="seat-condition standard common" title="H10" style="position:absolute; left:477px; top:190px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_h11" value="_h11" class="seat-condition standard common" title="H11" style="position:absolute; left:497px; top:190px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_h12" value="_h12" class="seat-condition standard common" title="H12" style="position:absolute; left:517px; top:190px; width:20px;"><span class="num">12</span></button>
													<button type="button" class="btn-seat-row" title="I 행" style="position:absolute; left:236px; top:212px;">I</button>
													<button type="button" id="seat_btn_i1" value="_i1" class="seat-condition standard common" title="I1" style="position:absolute; left:281px; top:210px; width:20px;"><span class="num">1</span></button>
													<button type="button" id="seat_btn_i2" value="_i2" class="seat-condition standard common" title="I2" style="position:absolute; left:301px; top:210px; width:20px;"><span class="num">2</span></button>
													<button type="button" id="seat_btn_i3" value="_i3" class="seat-condition standard common" title="I3" style="position:absolute; left:321px; top:210px; width:20px;"><span class="num">3</span></button>
													<button type="button" id="seat_btn_i4" value="_i4" class="seat-condition standard common" title="I4" style="position:absolute; left:349px; top:210px; width:20px;"><span class="num">4</span></button>
													<button type="button" id="seat_btn_i5" value="_i5" class="seat-condition standard common" title="I5" style="position:absolute; left:369px; top:210px; width:20px;"><span class="num">5</span></button>
													<button type="button" id="seat_btn_i6" value="_i6" class="seat-condition standard common" title="I6" style="position:absolute; left:389px; top:210px; width:20px;"><span class="num">6</span></button>
													<button type="button" id="seat_btn_i7" value="_i7" class="seat-condition standard common" title="I7" style="position:absolute; left:409px; top:210px; width:20px;"><span class="num">7</span></button>
													<button type="button" id="seat_btn_i8" value="_i8" class="seat-condition standard common" title="I8" style="position:absolute; left:429px; top:210px; width:20px;"><span class="num">8</span></button>
													<button type="button" id="seat_btn_i9" value="_i9" class="seat-condition standard common" title="I9" style="position:absolute; left:449px; top:210px; width:20px;"><span class="num">9</span></button>
													<button type="button" id="seat_btn_i10" value="_i10" class="seat-condition standard common" title="I10" style="position:absolute; left:477px; top:210px; width:20px;"><span class="num">10</span></button>
													<button type="button" id="seat_btn_i11" value="_i11" class="seat-condition standard common" title="I11" style="position:absolute; left:497px; top:210px; width:20px;"><span class="num">11</span></button>
													<button type="button" id="seat_btn_i12" value="_i12" class="seat-condition standard common" title="I12" style="position:absolute; left:517px; top:210px; width:20px;"><span class="num">12</span></button>
												</div>
											</div>
										</div>
									</div>
								</div>
									
							</div>
						</div>
						
					</div>
					<div class="seat-result">
						<div class="seat_wrap">
							<div class="tit_area">
								<p class="titl">${movietotal.moviename }</p>
								<p class="cate">2D</p>
							</div>
							<div class="info-area">
								<p class="theater">${movietotal.branchname }</p>
								<p class="special">${movietotal.thname }</p>
								<p class="date">
									<span>${movietotal.strdate }</span>
								</p>
								<div class="time">
									${movietotal.strhour}:${movietotal.strmin}~${movietotal.endhour}:${movietotal.endmin}
								</div>
								<p class="poster">
									<img src="">
								</p>
							</div>
							<div class="choice-seat-area"></div>
							<div class="pay-area">
								<div class="pay">
									<p class="pay-tit">최종결제금액</p>
									<div class="money">
										<em>0</em>
										<span style="display: block; float:left; padding: 0 0 0 5px; line-height: 35px;">원</span>
									</div>
								</div>
							</div>
							<div class="finish-area">
								<a class="finish-area-btn" href="/screening" >이전</a>
								<input type="submit" class="finish-area-btn active" value="결제" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		
	</div>
<%@ include file="../include/footer.jsp"%>