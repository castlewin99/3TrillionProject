<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />

<head>
     <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  </head>

<script>
   function deleteCheck(){
      result = confirm('진짜로 삭제하겠습니까?');
      if(result == true){
         location.href='boardDeleteProc?no=${board.no}'
      }
   }
</script>
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
 		

<section class="py-5">
         <div align="center">
           <h1 class="h2 text-uppercase mb-0">문의 사항</h1>
           <h1 class="h2 text-uppercase mb-0"></h1>
                <div class="container">
             <table class="table table-hover">
                  <thead>
              
                  </thead>
                  <tbody>
                    <tr>
         <th width="100">작성자</th>
         <td width="200">${board.id }</td>
         <th width="100">조회수</th>
         <td width="200">${board.hits }</td>
      </tr>
      <tr>
         <th>작성일</th>
         <td>${board.writeDate }</td>
         <th>다운로드</th>
         <c:choose>
            <c:when test="${empty board.fileName }">
               <td></td>
            </c:when>
            <c:otherwise>
               <td onclick="location.href='boardDownload?no=${board.no }'">
                  ${board.fileName }
               </td>
            </c:otherwise>
         </c:choose>
      </tr>
      <tr>
         <th>제목</th>
         <td colspan="3">${board.title }</td>
      </tr>
      <tr>
         <th height="400">문서내용</th>
         <td colspan="3">${board.content }</td>
      </tr>
      <tr>
         <td colspan="4" style="text-align: right;">
            <button class="btn btn-dark" type="button" onclick="location.href='boardForm'">목록</button>
            <button class="btn btn-dark" type="button" onclick="location.href='boardModify?no=${board.no }'">수정</button>
            <button class="btn btn-dark" type="button" onclick="deleteCheck()">삭제</button> 
         </td>
      </tr>
                  </tbody>
                </table>
                </div>
                </div>
              
   </section>
</div>
<c:import url="/footer" />