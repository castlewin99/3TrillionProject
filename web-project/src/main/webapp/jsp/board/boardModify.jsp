<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/header" />

<div class="container">
       <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">Board Update</h1>
              </div>
              <div class="col-lg-6 text-lg-end">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                    <li class="breadcrumb-item"><a class="text-dark" href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Board</li>
                    <li class="breadcrumb-item active" aria-current="page">Update</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
 		</section>
</div>
<div align="center">
<form action="boardModifyProc" method="post">
   <input type="hidden" name="no" value="${board.no }" />
   <section class="py-5">
         <div align="center">
           <h1 class="h2 text-uppercase mb-0">글 수정<br></h1>
           <h1 class="h2 text-uppercase mb-0"> </h1>
           <h1 class="h2 text-uppercase mb-0"> </h1>
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
         <td>${board.fileName }</td>
      </tr>
      <tr>
         <th>제목</th>
         <td colspan="3">
            <input style="width:100%;" type="text" name="title" value="${board.title }" />
         </td>
      <tr>
         <th>문서내용 수정</th>
         <td colspan="3">
            <textarea rows="10" cols="30" style="width:100%" name="content">${board.content }</textarea>
         </td>
      </tr>
      <tr>
         <td colspan="4" style="text-align: right;">
            <button class="btn btn-dark" type="button" onclick="location.href='boardForm'">목록</button>
            <input class="btn btn-dark" type="submit" value="수정">
            <button class="btn btn-dark" type="button" onclick="history.back()">이전</button> 
         </td>
      </tr>
                  </tbody>
                </table>
                </div>
                </div>
             </section>
             </form>
             </div>
<c:import url="/footer" />