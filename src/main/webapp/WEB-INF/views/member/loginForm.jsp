<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${path }/resources/css/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
 function CheckKey_log(e) {
    e = e || window.event;
    key = e.keyCode;
    if (key == 13) {
        check_log()
    }
}
function pHolder( obj ){ 

	if( obj.alt != "1"){
		obj.value = ""; obj.alt="1"; obj.className="placeHolderOver";
	}
} 
 
function CheckKey(e) {
    e = e || window.event;
    key = e.keyCode;
    if (key == 13) {
        check()
    }
}

function check() {
    if (document.form1.member_id.value.length == 0) {
        document.form1.member_id.focus();
        alert('회원 ID를 입력하세요.');
        return;
    }
    if (document.form1.pw.value.length == 0) {
        document.form1.pw.focus();
        alert('회원 비밀번호를 입력하세요.');
        return;
    }
    submitsend();
}
function submitsend() {
    document.form1.submit();
}
</script>
</head>
<body>
	<section>
       
     <!-- 로그인입력폼 -->
     <div id="contentWrapper">
       <div id="contentWrap">
       
	 	<div id="content">
	        <div id="loginWrap">
		        <div class="page-body cb_clear">
				<div class="login_all_container">
				<div class="mem_login_box">
				<div class="mlog-sign">
						<div class="tit_logo"><img src="${path }/resources/image/login_login_title.gif"></div>
						<!-- <div class="shop_ment">안녕하세요 회원님.</div> -->
						<!-- 로그인 폼 -->
						<div class="mlog">
							<form action="${path }/member/login.do" method="post" name="form1" >
								<!-- <fieldset> <legend>member login</legend> -->
								<ul class="frm-list cb_clear">
									<li class="id">
										<dl class="id cb_clear">
											<dt>Id<span class="dorange">*</span></dt>
											<dd><input type="text" name="member_id" maxlength="20" onblur="document.form1.pw.focus();" class="MS_login_id placeHolder" value="id를 입력해주세요." onclick="pHolder(this)" alt="0"></dd>
										</dl>
										<dl class="pwd cb_clear">
											<dt>Password<span class="dorange">*</span></dt>
											<dd><input type="password" name="pw" id="pw" onkeydown="CheckKey(event);" class="MS_login_pw" /></dd>
										</dl>
									</li>
									<li class="se-log"><label><input type="checkbox" name="ssl" value="Y"  class="MS_security_checkbox" /> 보안접속</label></li>
									<li class="login_submit">
										<a href="javascript:check();"><img class="btn-mlog" src="${path }/resources/image/submit_login_btn_on.gif" title="로그인" 
										onmouseover="this.src='${path }/resources/image/submit_login_btn.gif'" 
										onmouseout="this.src='${path }/resources/image/submit_login_btn_on.gif'" /></a>
									</li>
								</ul>
								</fieldset>
							</form>
						</div>
		
						<!-- sns로그인 - 미설정임. 업데이트 필요 -->
						<div style="text-align: center;">
							<a href="javascript:sns_login_log('facebook');"><img src="${path }/resources/image/h34_sns_facebook.gif" alt="페이스북으로 로그인" /></a>	
							<a href="javascript:sns_login_log('naver');"><img src="${path }/resources/image/h34_sns_naver.gif" alt="네이버로 로그인" /></a>
							<a href="javascript:sns_login_log('kakao');"><img src="${path }/resources/image/h34_sns_kakaotalk.gif" alt="카카오으로 로그인" /></a>	
							<style>
								#loginWrap .mlog-sign, #loginWrap .mjoin-sign{height: 350px;}
							</style>
						</div><!-- .mlog-sign -->
						
						<!-- 아이디와 비밀번호 찾기 -->
						<div class="sign">
							<h3 class="blind">sign up</h3>
							<div class="btns">
								<dl>
									<dt>아이디/비밀번호를 잊으셨나요?</dt>
									<dd>
										<a href="${path }/member/findIdForm.do"><img src="${path }/resources/image/lo_idpass_btn.gif" alt="아이디/비밀번호찾기" /></a>
									</dd>
								</dl>
							</div>
						</div> 
						
						
					 </div><!--.mlog-sign-->
					</div><!--.mem_login_box-->
				</div><!--login_all_container-->
		
		<!-- 회원가입 창 -->
		<div class="mem_join_box">
			<div class="mjoin-sign">
				<div class="tit_logo"><img src="${path }/resources/image/login_join_title.gif"></div>
				<div class="shop_ment">후즈백은 '성함, 아이디, 이메일' 만으로 "간편회원가입" 됩니다. </br></br>
					신규회원 첫구매 무료배송쿠폰, 적립금3,000원 즉시할인, 앱으로 구매시 1,000원추가할인까지</br>
					좋은상품 합리적인 가격으로 이용하세요.</div>
				<div class="btns">
					<a href="${path }/member/signUpForm.do">
					<img src="${path }/resources/image/submit_join_btn_on.gif" title="회원가입하기" 
					onmouseover="this.src='${path }/resources/image/submit_join_btn.gif'" 
					onmouseout="this.src='${path }/resources/image/submit_join_btn_on.gif'" /></a>
				</div>
			</div><!-- .mjoin-sign -->
			<div class="sign">
				<p>&nbsp;</p>
			</div>
		</div><!--.mem_join_box-->
	
					<div class="login_banner_box">
						<ul class="cb_clear">
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_01.jpg" title="신규회원" /></a></li>
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_02.jpg" title="추천인" /></a></li>
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_03.jpg" title="회원구매" /></a></li>
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_04.jpg" title="1회이상구매" /></a></li>
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_05.jpg" title="구매후" /></a></li>
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_06.jpg" title="회원이벤트1" /></a></li>
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_07.jpg" title="회원이벤트2" /></a></li>
							<li><a href="${path }/"><img src="${path }/resources/image/join_members_08.jpg" title="회원이벤트3" /></a></li>
						<ul>
					</div>
					</div><!-- .page-body -->
                    </div><!-- #loginWrap -->
                </div><!-- #content -->
            </div><!-- #contentWrap -->
        </div><!-- #contentWrapper-->
	</section>
</body>
</html>