<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LSD | Holland</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- gLightbox gallery-->
    <link rel="stylesheet" href="vendor/glightbox/css/glightbox.min.css">
    <!-- Range slider-->
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">
    <!-- Choices CSS-->
    <link rel="stylesheet" href="vendor/choices.js/public/assets/styles/choices.min.css">
    <!-- Swiper slider-->
    <link rel="stylesheet" href="vendor/swiper/swiper-bundle.min.css">
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <style>
	   .id_ok{
		color: green;
		display: none;
	   }
	   .id_taken{
	   	color: red;
	   	display: none;
	   }
	   .pw_ok{
		color: green;
		display: none;
	   }
	   .pw_ko{
	   	color: red;
	   	display: none;
	   }
    </style>
  </head>
  <body>
    <div class="page-holder">
      <!-- navbar-->
      <c:import url="/header"/>
      <!--  Modal -->
      
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">회원가입</h1>
              </div>
              <div class="col-lg-6 text-lg-end">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                    <li class="breadcrumb-item"><a class="text-dark" href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Register</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <!-- BILLING ADDRESS-->
        <form class="row row-cols-lg-auto g-3 align-items-center" action="registProc" method="post" id="f">
          <div class="col-lg-4">
          </div>
          <div class="col-lg-2">
            <label class="form-label text-sm" for="id">아이디 </label>
            <input class="form-control form-control-lg" type="text" name="id" id="id" placeholder="your ID">
            <span class="id_ok form-label text-sm">사용 가능한 아이디입니다.</span>
            <span class="id_taken form-label text-sm">이미 사용중인 아이디입니다.</span>
          </div>
           <div class="col-lg-6">
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-2">
            <label class="form-label text-sm" for="pw">비밀번호 </label>
            <input class="form-control form-control-lg" type="password" id="pw" name="pw" placeholder="e.g. qwer1234!">
            <span class="pw_ok form-label text-sm"> good</span>
            <span class="pw_ko form-label text-sm"> bad</span>
          </div>
          <div class="col-lg-2">
            <label class="form-label text-sm" for="pwchk">비밀번호 확인 </label>
            <input class="form-control form-control-lg" type="password" id="pwchk" name="pwchk" placeholder="e.g. qwer1234!">
            <span class="pw_ok form-label text-sm">비밀 번호 확인이 일치 합니다.</span>
            <span class="pw_ko form-label text-sm">비밀 번호 확인이 일치하지 않다.</span>
          </div>
          <div class="col-lg-2 py-1">
          	<span class="placement"> </span>
          	<span class="placement"> </span>
          </div>
          <div class="col-lg-2">
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-2">
        	<label class="form-label text-sm" for="userName">이름 </label>
            <input class="form-control form-control-lg" type="text" id="userName" name="userName" placeholder="Enter your name">
          </div>
          <div class="col-lg-6">
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-2">
            <label class="form-label text-sm" for="mobile">전화번호 </label>
            <input class="form-control form-control-lg" type="text" id="mobile" name="mobile" placeholder="Your phone number">
          </div>
          <div class="col-lg-6">
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-2">
            <label class="form-label text-sm" for="postcode">우편번호 </label>
            <input class="form-control form-control-lg" type="text" id="postcode" name="postcode" placeholder="옆에 우편번호 찾기 누르세요" readonly>
          </div>
          <div class="col-lg-1">
            <label class="form-label text-sm" for="postcodeSearch"> </label>
            <input type="button" class="btn btn-sm btn-secondary" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
          </div>
          <div class="col-lg-5">
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-4">
            <label class="form-label text-sm" for="address">주소 </label>
            <input class="form-control form-control-lg" type="text" id="address" name="address" placeholder="우편번호 찾기 누르면 자동으로 채워짐" readonly>
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-4">
            <label class="form-label text-sm" for="detailAddress">상세주소 </label>
            <input class="form-control form-control-lg" type="text" id="detailAddress" name="detailAddress" placeholder="상세주소 입력">
          </div>
          <div class="col-lg-4">
          </div>
          <div class="col-lg-5">
          </div>
          <div class="py-5">
            <button class="btn btn-dark" type="button" onclick="validCheck()">회원가입</button>
            <button class="btn btn-danger" type="reset">취소</button>
          </div>
        </form>
      </div>
      <c:import url="/footer"/>
     
      <!-- JavaScript files-->
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="vendor/glightbox/js/glightbox.min.js"></script>
      <script src="vendor/nouislider/nouislider.min.js"></script>
      <script src="vendor/swiper/swiper-bundle.min.js"></script>
      <script src="vendor/choices.js/public/assets/scripts/choices.min.js"></script>
      <script src="js/front.js"></script>
      <script src = "js/jquery-3.7.1.min.js"></script>
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script>
      	var ipass=0;
      	var pwpass=0;
      	
	  	$('#id').focusout(function(){
		 	let id = $('#id').val();
	  		
	  		$.ajax({
	  			url: "idCheck",
	  			type: "post",
	  			data: {id:id},
	  			success: function(result){
	  				if(result == 0){
	  					$(".id_ok").css("display", "inline-block");
	  					$(".id_taken").css("display", "none");
	  					idpass=1;
	  				} else{
	  					$(".id_taken").css("display", "inline-block");
	  					$(".id_ok").css("display", "none");
	  					idpass=0;
	  				}
	  			},
	  			error: function(){
	  				alert('서버요청 실패');
	  			}
	  		});
	  	});
	  	
	  	$('#pwchk').keyup(function(){
	  		let pw = $('#pw').val();
		 	  let pwchk = $('#pwchk').val();
	  		
  	 		if(pw == pwchk){
	   			$(".pw_ok").css("display", "inline-block");
		  	  $(".pw_ko").css("display", "none");
			    pwpass = 1;
	 		    } 
        if (pw != pwchk){
	 		    $(".pw_ko").css("display", "inline-block");
			    $(".pw_ok").css("display", "none");
			    pwpass = 0;
	 		  }
	  	});
	  	
		function execDaumPostcode() {
			new daum.Postcode({
	      		oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var address = ''; // 주소 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    address = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    address = data.jibunAddress;
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById('address').value = address;
	
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('detailAddress').focus();
		        }
			}).open();
		}
		
		function validCheck(){
			var id = $('#id').val();
			var pw = $('#pw').val();
			var name = $('#userName').val();
			var phone = $('#mobile').val();
			var pc = $('#postcode').val();
			var addrD = $('#detailAddress').val();
			
			if(id.length == 0 || idpass == 0){
				alert("아이디를 확인해주세요");
				$('#id').focus();
			} else if(pw.length == 0 || pwpass == 0){
				alert("비밀번호를 확인해주세요");
				$('#pw').focus();
			} else if(name.length == 0){
				alert("이름를 입력해주세요");
				$('#name').focus();
			} else if(phone.length == 0){
				alert("전화번호를 입력해주세요");
				$('#phone').focus();
			} else if(pc.length == 0){
				alert("우편번호를 입력해주세요");
				$('#postcode').focus();
			} else if(addrD.length == 0){
				alert("상세주소를 입력해주세요");
				$('#addrD').focus();
			} else if(confirm("회원가입 진행하시겠습니까?")){
				var f = document.getElementById('f');
				f.submit();
				alert("회원 가입되었습니다.")
			}
			return false;
			
		}
	  </script>
      <script>
        // ——————————————————————————— //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ——————————————————————————— //
        function injectSvgSprite(path) {
        
            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }
        // this is set to BootstrapTemple website as you cannot 
        // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
        // while using file:// protocol
        // pls don't forget to change to your domain :)
        injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg'); 
        
      </script>
      <!——————————————————————————— FontAwesome CSS - loading as last, so it doesn't block rendering———————————————————————————>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>