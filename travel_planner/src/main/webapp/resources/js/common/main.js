/**
 * footer (완)
 */
 
/* footer */
const footerBtn = document.querySelector(".footer_toggle");	// 클릭할 버튼
const detail = document.querySelector(".footer_detail");			// toggle할 내용
const footers = document.querySelector("footer");					// footer 높이
const arrow = document.querySelector("#entre");					// 화살표 아이콘

footerBtn.addEventListener("click", () => {
	detail.classList.toggle("active");
	footers.classList.toggle("hei");
	arrow.classList.toggle("arrow-up");
});