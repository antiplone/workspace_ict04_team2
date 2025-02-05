document.addEventListener("DOMContentLoaded", (e) => {
	const tourList = document.querySelector("#recomment_tour_list");
	const slideItems = document.querySelectorAll(".recommend_slide_item");
	
	const rePrevBtn = document.querySelector(".recommondPrevBtn");
	const reNextBtn = document.querySelector(".recommondNextBtn");
	
	//counter
	let counter =0;
	const size = slideItems[0].clientWidth;
	
	console.log("size : " + size);
	console.log("tourList : " + tourList);
	console.log(slideItems.length);
	
	tourList.style.transform = "translateX(" + -size * counter + "px)";
	const recommendSlideItem = document.querySelector(".recommend_slide_item");

	//Button Listeners
	reNextBtn.addEventListener("click", () => {
	  if (counter >= slideItems.length - 1) return;
	  tourList.style.transition = "transform 0.3s ease-in-out";
	  counter++;
	  tourList.style.transform = "translateX(" + -size * counter + "px)";
	  // 마지막에는 오른쪽 클릭버튼 안나오게 하기
	});
	
	rePrevBtn.addEventListener("click", () => {
	  if (counter <= 0) return;
	  tourList.style.transition = "transform 0.3s ease-in-out";
	  counter--;
	  tourList.style.transform = "translateX(" + -size * counter + "px)";
	  // 마지막에는 왼쪽 클릭버튼 안나오게 하기
	});
	
})