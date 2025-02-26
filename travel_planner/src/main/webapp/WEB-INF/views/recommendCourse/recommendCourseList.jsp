<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>추천코스 목록</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/recommendCourseList.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<!-- (3-3-2). 자바스크립트 소스 연결 -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
<script src="${path}/resources/js/recommendCourse/recommendCourseList.js" defer></script>
 
<script>
	function onCourseClick(courseId) {
		console.log(courseId)
		$.ajax({
			url: '${path}/recommendCourseDetail.rc', // 컨트롤러로 이동
			type: 'POST',
			data: 'courseId=' + courseId,
			
			success: function(result) {
				console.log(result);
				$('#courseInfo').html(result); 		// div id가 courseList인 자리에
				$('#courseModal').show();
			},
			error: function() {
				alert('recommendCourseDetail() 데이터를 가져오는데 실패하였습니다.');
			}
		});
	}
</script>

</head>
<body>
 	<div class="rc_wrap">
		
		<!-- 컨텐츠 시작 -->
		<div id="rc_container">
				<!-- 상단 중앙1 시작 -->
				<div id="rc_contents-head">
					<div id="rc_title">
						<br><br>
						<div align="center" class="rc_title pretendardfont">여행코스 짜기 어렵다면 여기닷!</div>
						<br><br>
					</div>
					
					<div class="pretendardfont" id="page-title"> 추천코스 </div>	
				</div>
				<!-- 상단 중앙1 끝 -->	
					
				<!-- 상단 중앙2 시작 -->
				<div id="courseList">
					<!-- 1번 추천코스 시작 -->
					<c:forEach var="dto" items="${list}">
						<div class="course_list_modal_box">
							<div class="modal_popup_button">
								<button type="button" class="modal_btn"
									 onclick="onCourseClick('${dto.tr_course_id}')" 
											course_id="${dto.tr_course_id}"
					                        course_title="${dto.tr_course_title}"
					                        course_taketime="${dto.tr_course_taketime}"
					                        course_tag="${dto.tr_course_tag}"
					                        course_map="${dto.tr_course_map}"
					                        course_subId="${dto.tr_Course_subId}"
					                        course_locationImage="${dto.tr_course_locationImage}"
					                        course_location="${dto.tr_course_location}"
					                        course_locationContent="${dto.tr_course_locationContent}" 
					                        course_image="${dto.tr_course_image}">
					                        
					                        <!-- 추천코스 이미지 -->
					                        <div class="rc_image_box">
					                   			<img src="${dto.tr_course_image}" class="course_img" alt="${dto.tr_course_title}">
					                        </div>  
											
											<div class="rc_modal_button_content">
												<div class="course_title pretendardfont">${dto.tr_course_title}</div>
												<div class="course_taketime pretendardfont">${dto.tr_course_taketime}</div>
												<div class="course_tag pretendardfont">${dto.tr_course_tag}</div>
										   </div>
								 </button>
							</div>
						</div>
					</c:forEach>	
					<!-- 1번 추천코스 끝 -->
					
					<!-- 모달 팝업 -->
					<div class="modal" id="courseModal">
					    <div class="modal_popup">
					        <div class="content_box">
					            <div class="content">
					                <div class="courseContent pretendardfont">
					                    <div id="modalCourseTitle"></div>
					                    <div id="modalCourseTaketime"></div>
					                    <hr>
					                    <div id="modalCourseTag"></div>
					                    <hr>
					                    <div class="course_map_box">
					                    	<img id="modalCourseMap" class="modal_map_image" src=""  alt="">
					                    </div>
					                    <!-- 추천코스 info 코드 -->
										<div id="courseInfo" align="center">
      
										</div>
										<!-- 추천코스 info 코드 끝 -->
					                </div>
					            </div>
					        </div>
					        <button type="button" class="close_btn"><i class="fa-solid fa-xmark"></i></button>
					    </div>
					</div>
					<!-- 모달 팝업 끝 -->
			 </div>
		</div>
	</div>
</body>
<script>
	$(function(){
		// 모달 열기
		$(".modal_btn").on('click',function(){
			$("#modalCourseTitle").text($(this).attr("course_title"));
	        $("#modalCourseTaketime").text($(this).attr("course_taketime"));
	        $("#modalCourseTag").text($(this).attr("course_tag"));
	        $("#modalCourseMap").attr("src", $(this).attr("course_map"));
	        $("#modalCourseMap").attr("alt", $(this).attr("course_image"));
	        
	        $("#courseModal").css("display","block");
	        $("#courseModal").attr("course_id", $(this).attr("course_id"));
	        $("body").css("overflow","hidden");
		})
		
		// 모달 닫기
		$(".close_btn").on('click', function(){
			$("#course_title").text('');
	        $("#course_taketime").text('');
	        $("#course_tag").text('');
	        $("#course_map").attr("src", '');
	        $("#course_image").attr("alt", '');
	        
			$("#courseModal").css("display","none");
		    $("#courseModal").attr("course_id", '');
		    $("body").css("overflow","unset");
		})
	});
</script>
</html>