<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />


      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">Profile Update</h1>
              </div>
              <div class="col-lg-6 text-lg-end">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                    <li class="breadcrumb-item"><a class="text-dark" href="index">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Profile</li>
                     <li class="breadcrumb-item active" aria-current="page">update</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <div class="container p-0">

            <div class="row">
              <!-- SHOP SIDEBAR-->
              <div class="col-lg-3 order-2 order-lg-1">
                <h5 class="text-uppercase mb-4"> </h5>
                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase fw-bold">목록</strong></div>
                <ul class="list-unstyled small text-muted ps-lg-4 font-weight-normal">
	              <li class="mb-2"><a class="reset-anchor" href="#!">내 정보</a></li>
	              <li class="mb-2"><a class="reset-anchor" href="#!">내 계시글</a></li>
	              <li class="mb-2"><a class="reset-anchor" href="#!">장바구니</a></li>
	              <li class="mb-2"><a class="reset-anchor" href="#!">구매 목록</a></li>
	              <li class="mb-2"><a class="reset-anchor" href="#!">배송 현황</a></li>
	            </ul>
              </div>
                
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <form class="row row-cols-lg-auto g-3 align-items-center" action="updateProc" method="post" id="f"> 
                <div class="row">   
                  <!-- PRODUCT-->
                  <div class="col-lg-6 col-sm-9">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
                      			<label class="form-label text-sm text-uppercase" align="left" for="firstName">아이디 (*필수 항목) </label>  
							    <input class="form-control form-control-lg" type="text" value="${sessionScope.id }" id="id"> 
								<br>
								<label class="form-label text-sm text-uppercase" align="left" for="이름">이름 </label>
								<input class="form-control form-control-lg" type="text" name="userName" id="userName" value="${sessionScope.userName }" >
                      </div>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-lg-6 col-sm-9">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
							<label class="form-label text-sm text-uppercase"  for="비밀번호">비밀번호 </label>
							<input class="form-control form-control-lg" type="password" name="pw" placeholder="비밀번호" id="pw">
							<br>
							<label class="form-label text-sm text-uppercase"  for="비밀번호확인">비밀번호 확인 </label>
							<input class="form-control form-control-lg" type="password" name="confirm" placeholder="비밀번호 확인 " id="confirm" onchange="pwCheck()">
                      </div>
                    </div>
                  </div>
                  
                  <!-- PRODUCT-->
                  <div class="col-lg-12 col-sm-18">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
							<label class="form-label text-sm text-uppercase"  for="상세주소">상세 주소</label>
							<input class="form-control form-control-lg" type="text" name="address" value="${sessionScope.address }">
							<label class="form-label text-sm text-uppercase"  for="전화번호">전화번호 </label>
							<input class="form-control form-control-lg" type="text" name="mobile" value="${sessionScope.mobile }">
                      </div>
                    </div>
                  </div>
               
                  
                  <nav aria-label="Page navigation example">
                  <ul class="pagination justify-content-center justify-content-lg-end">        
                    <li class="page-item mx-1"><input class="btn btn-sm btn-dark" type="button" value="회원수정" onclick="allCheck()"></li>
                    <li class="page-item mx-1"><input class="btn btn-sm btn-dark" type="button" value="취소" onclick="location.href='index'"></li>
                  </ul>
                </nav>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
         </form>
      





<c:import url="/footer"/>
