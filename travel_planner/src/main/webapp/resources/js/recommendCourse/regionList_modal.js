/**
 * regionList_modal.js
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
            const areaEnglish = this.getAttribute("data-area-english");
            const areaKorea = this.getAttribute("data-area-korea");
            const areaContent = this.getAttribute("data-area-content");
            const areaImage = this.getAttribute("data-area-image");

            // 모달 내용 업데이트
            modalAreaEnglish.textContent = areaEnglish;
            modalAreaKorea.textContent = areaKorea;
            modalAreaContent.textContent = areaContent;
            modalAreaImage.src = `/resources/images/recommendCourse/area/${areaImage}.jpg`;
            modalAreaImage.alt = areaEnglish;

            // 모달 열기
            modal.style.display = "block";
        });
    });

    // 모달 닫기
    closeModalBtn.addEventListener("click", function () {
        modal.style.display = "none";
    });

    // 모달 외부 클릭 시 닫기
    window.addEventListener("click", function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    });
});


