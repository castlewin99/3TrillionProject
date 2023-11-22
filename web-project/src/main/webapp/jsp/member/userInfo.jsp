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
                  <div class="col-lg-3 col-sm-6">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>			
					         <br>
                      </div>
                     	<img class="rounded-circle" src="img/customer-2.png" style="width:230px; height:230px;" alt="">
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-lg-1 col-sm-2">
                  </div>
                  
                  <!-- PRODUCT-->
                  <div class="col-lg-8 col-sm-9">
                    <div class="product text-center">
                      <div class="mb-3 position-relative">
                        <div class="badge text-white bg-"></div>
                     		<table class="table table-hover" >
							<thead>
								<tr align="center">
									<th colspan="3">상세 정보</th>
								</tr>
							</thead>
							<tbody align="center">
								<tr>
									<td width="150" align="left" >이름 :</td>
									<td colspan="2" >${member.userName }</td>
								</tr>
								<tr>
									<td width="150" align="left" >아이디 :</td>
									<td colspan="2" >${member.id }</td>
								</tr>
								<tr>
									<td width="150" align="left" >우편번호 :</td>
									<td colspan="2" >${postcode }</td>
								</tr>
								<tr>
									<td width="150" align="left" >주소 :</td>
									<td colspan="2" >${member.address }</td>
										</tr>
								<tr>
									<td width="150" align="left" >상세주소 :</td>
									<td colspan="2" >${detailAddress }</td>
								</tr>
								<tr>
									<td width="150" align="left" >전화번호 :</td>
									<td colspan="2" >${member.mobile }</td>
								</tr>
							</tbody>
						</table>
                      </div>
                      <p class="small text-muted"> </p>
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
      





<c:import url="/footer"/>
