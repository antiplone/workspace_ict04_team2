/**
 * regionList.js
 */
 
document.addEventListener("DOMContentLoaded", function () {
    const modal = document.getElementById("regionModal");
    const closeModalBtn = document.querySelector(".close_btn");

    // 모달 내부 요소들
    const modalAreaEnglish = document.getElementById("modalAreaEnglish");
    const modalAreaKorea = document.getElementById("modalAreaKorea");
    const modalAreaContent = document.getElementById("modalAreaContent");
    const modalAreaImage = document.getElementById("modalAreaImage");

    // 모든 버튼에 클릭 이벤트 추가
    document.querySelectorAll(".modal_btn").forEach(button => {
        button.addEventListener("click", function () {
            // 버튼의 data-* 속성에서 정보 가져오기
            const areaEnglish = this.getAttribute("area_english");
            const areaKorea = this.getAttribute("area_korea");
            const areaContent = this.getAttribute("area_content");
            const areaImage = this.getAttribute("area_image");

            // 모달 내용 업데이트
            modalAreaEnglish.textContent = areaEnglish;
            modalAreaKorea.textContent = areaKorea;
            modalAreaContent.textContent = areaContent;
            modalAreaImage.src = areaImage;
            /*modalAreaImage.alt = areaEnglish;*/

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
