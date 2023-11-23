<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />


<div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">고객센터</h1>
              </div>
              <div class="col-lg-6 text-lg-end">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                    <li class="breadcrumb-item"><a class="text-dark" href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">고객센터</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
 		</section>
 		
 		
        
</div>


 <section class="py-5">
          <div class="container p-0">
              <!-- SHOP SIDEBAR-->
              
				<div align="center">
					<div class="header">
					<h1 class="h2 text-uppercase mb-2" align="center">문의 목록</h1>
				</div>
				
						<c:choose>
							<c:when test="${empty boards }">
								<h1> 등록된 데이터가 존재하지 않습니다. </h1>
							</c:when>
						<c:otherwise>
								<table class="table table-hover" >
									<thead>
										<tr align="center">
											<th width="100">No.</th>
											<th width="500">제목</th>
											<th width="300">작성자</th>
											<th width="300">작성일</th>
											<th width="100">조회수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="board" items="${ boards}">
											<tr "table-active" align="center">
												<td>${board.no }</td>
												<td onclick="location.href='boardContent?no=${board.no }'">
													${board.title }
												</td>
												<td>${board.id }</td>
												<td>${board.writeDate }</td>
												<td>${board.hits }</td>
											</tr>
										</c:forEach>
										</tbody>
										<tr></tr>
									</table>
									<table>
										<thead>
											<tr align="center">
												<th width="250"></th>
												<th width="550"></th>
												<th width="500" >${result }</th>
												<th width="500"></th>
												<th width="260"><button type="button" class="btn btn-sm btn-dark" onclick="location.href='boardWrite'">글쓰기</button></th>
												
											</tr>
										</thead>
									</table>
							</c:otherwise>
					</c:choose>	
						
				</div>
		</div>
	</section>




<c:import url="/footer" />