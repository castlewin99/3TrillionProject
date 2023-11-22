<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />


      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">Profile</h1>
              </div>
              <div class="col-lg-6 text-lg-end">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                    <li class="breadcrumb-item"><a class="text-dark" href="index">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Profile</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
            
              <h1>회원 수정</h1>
        <form action="updateProc" method="post" id="f">       
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
                <div class="row">
                  <!-- PRODUCT-->
                  <div class="col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
                      	label class="form-label text-sm text-uppercase" for="firstName">First name </label>  
      					<input class="form-control form-control-lg" type="text" value="${sessionScope.id }" id="id"> (*필수 항목) <br>
      					<input type="password" name="pw" placeholder="비밀번호" id="pw"><br>
                      </div>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
                      input type="password" name="confirm" placeholder="비밀번호 확인 " id="confirm" onchange="pwCheck()">
      <label id="label" ></label><br>
      <input type="text" name="userName" id="userName" value="${sessionScope.userName }" ><br>
                      </div>
                    </div>
                  </div>
                  
                  <!-- PRODUCT-->
                  <div class="col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
                      <input type="text" name="address" value="${sessionScope.address }"><br>
      <input type="text" name="mobile" value="${sessionScope.mobile }"><br>
                      </div>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
                            <input type="button" value="회원수정" onclick="allCheck()">
      <input type="button" value="취소" onclick="location.href='index'"><br>
                      </div>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
                      
                      </div>
                    </div>
                  </div>
                  <nav aria-label="Page navigation example">
                  <ul class="pagination justify-content-center justify-content-lg-end">        
                    <li class="page-item mx-1"><button type="button" class="btn btn-sm btn-dark" onclick="location.href='update'">회원 수정</button></li>
                    <li class="page-item mx-1"><button type="button" class="btn btn-sm btn-dark" onclick="location.href='delete'">회원 삭제</button></li>
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
