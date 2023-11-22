<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />


<div align="center">
    <form action="boardWriteProc" method='post' enctype="multipart/form-data">
        <table>
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row px-4 px-lg-5 py-lg-4 align-items-left">
                        <div class="col-lg-6">
                            <h1 class="h2 text-uppercase mb-0">1대1 문의</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index">HOME</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">고객센터</li>
                                </ol>
                            </nav>
                            <ul class="list-unstyled mb-0">
                                <li class="d-flex align-items-center justify-content-between"><strong class="small fw-bold">언제든 궁금하신 점을 남겨주세요.</strong></li>
                                <li class="d-flex align-items-center justify-content-between"><strong class="small fw-bold">최대한 빠르고 정확하게 답변 드리겠습니다.</strong></li>
                                <li class="d-flex align-items-center justify-content-between"><strong class="small fw-bold">답변은 회원가입 시 등록한 이메일을 통해 확인하실 수 있습니다.</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">
                <div class="row px-4 px-lg-5 py-lg-10 align-items-left">
                    <tr>
                        <th width="100px">문의 제목</th>
                        <td><input style="width: 150%;" type="text" name="title"></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td>
                            <textarea style="width: 150%;" rows="20" cols="30" name="content"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>파일첨부</th>
                        <td colspan="2" align="left"><input type="file" name="upfile"></td>
                    </tr>
                    <tr>
                        <th> </th>
                        <td colspan="2" align="Left">
                            <div class="col-lg-12 form-group">
                                <input class="btn btn-dark" type="submit" value="확인">
                                <button class="btn btn-dark" type="button" onclick="location.href='boardForm'">취소</button>
                            </div>
                        </td>
                    </tr>
                </div>
            </section>
        </table>
    </form>
</div>

<c:import url="/footer" />