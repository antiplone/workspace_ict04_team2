/**
 * recommendCourseList.js
 */

document.addEventListener("DOMContentLoaded", function () {
    const modal = document.getElementById("courseModal");
    const closeModalBtn = document.querySelector(".close_btn");

    // 모달 내부 요소들
    const modalCourseId = document.getElementById("modalCourseId");
    const modalCourseTitle = document.getElementById("modalCourseTitle");
    const modalCourseTaketime = document.getElementById("modalCourseTaketime");
    const modalCourseTag = document.getElementById("modalCourseTag");
    const modalCourseMap = document.getElementById("modalCourseMap");

    // 모든 버튼에 클릭 이벤트 추가
    document.querySelectorAll(".modal_btn").forEach(button => {
        button.addEventListener("click", function () {
        
            // 버튼의 data-* 속성에서 정보 가져오기
            const courseId = this.getAttribute("course_id");
            const courseTitle = this.getAttribute("course_title");
            const courseTaketime = this.getAttribute("course_taketime");
            const courseTag = this.getAttribute("course_tag");
            const courseMap = this.getAttribute("course_map");
            const courseImage = this.getAttribute("course_image");

            // 모달 내용 업데이트
            modalCourseTitle.textContent = courseTitle;
            modalCourseTaketime.textContent = courseTaketime;
            modalCourseTag.textContent = courseTag;
         	modalCourseMap.src = courseMap;
        	
            // 모달 열기
            modal.style.display = "block";
            
            //스크롤 방지
			document.body.style.overflow = "hidden";
		
		});
    });

    // 모달 닫기
    closeModalBtn.addEventListener("click", function () {
        modal.style.display = "none";
        
	        //스크롤 방지 해제
			document.body.style.overflow = "unset";
			
    });

    // 모달 외부 클릭 시 닫기
    window.addEventListener("click", function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    });
   
});
