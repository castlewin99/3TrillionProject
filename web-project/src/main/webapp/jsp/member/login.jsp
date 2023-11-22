
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />

      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
					<div class="row">
					   <div align="center">
						<h1>로그인</h1>
						<table >
						<tr><td>
							<font color="red" >${msg }</font>
						</td></tr>
						<tr align="center" width="500" ><td>
						<form action="loginProc" method="post" id="f">
							<input class="form-control form-control-lg" type="text" name="id" placeholder="아이디" id="id"><br>
							<input class="form-control form-control-lg" type="password" name="pw" placeholder="비밀번호" id="pw"><br>
							<input class="btn btn-dark" type="button" value="로그인" onclick="loginCheck()">
							<input class="btn btn-dark" type="button" value="회원가입" onclick="location.href='regist'"><br>
						</form>
						</td></tr>
					
						<!-- 
							카카오 이미지 링크: https://developers.kakao.com/tool/demo/login/login?method=dynamic
							Client_ID    : <REST API Key>
							Redirect_URL : <REDIRECT URL> 
						 -->
						<tr>
						<td> </td>
						</tr>
						<tr>
							<td width="300" align="center">
							<a href="https://kauth.kakao.com/oauth/authorize?response_type=code
							&client_id=7f2d4b83f702d2f483887509dbe71113
							&redirect_uri=http://localhost/kakaoLogin">
								<img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" />
							</a>
						</td></tr>
						
						</table>
						</div>  
		  	 	</div>
			</div>
		   </div>
		</section>	 	
	   </div>
<c:import url="/footer" />