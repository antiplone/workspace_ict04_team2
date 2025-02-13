/**
 * recommendCourseList.js
 */

const modal = document.querySelector('.modal');
const modals = document.querySelectorAll('.modal');
const modalOpens = document.querySelectorAll('.modal_btn');
const modalCloses = document.querySelectorAll('.close_btn');
/*const modalClose = document.querySelector('.close_btn');*/


//열기 버튼을 눌렀을 때 모달팝업이 열림
 modalOpens.forEach((modalOpen, index) => {
	modalOpen.addEventListener("click",function(){
	    //display 속성을 block로 변경
	    modals[index].style.display = 'block';
	    });
});

//닫기 버튼을 눌렀을 때 모달팝업이 닫힘
modalCloses.forEach((modalClose, index) => {
	modalClose.addEventListener('click',function(){
	   //display 속성을 none으로 변경
	    console.log(index);
	   /* this.modal_btn.parentElement.style.display = 'none'; */
	   modals[index].style.display = "none";
	});
});