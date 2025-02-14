document.addEventListener("DOMContentLoaded", (e) => {
	const tourList = document.querySelector("#recomment_in_wrap");
	const rePrevBtn = document.querySelector("#recommondPrevBtn");
	const reNextBtn = document.getElementById("recommondNextBtn");
	/*const reNextBtn = document.querySelector("#recommondNextBtn");*/
	
	rePrevBtn.addEventListener('mouseover', function() {
        console.log("tourList.style.transform = 'translateX(380px)'");
    });
	
	reNextBtn.addEventListener('mouseout', function() {
        console.log("tourList.style.transform = 'translateX(-380px)'");
    });
	
	//counter
	let counter =1;
	let size = 100;
	
	console.log("size : " + size);
	console.log("tourList : " + tourList);
	
	const recommendSlideItem = document.querySelector(".recommend_slide_item");

	//Button Listeners
	reNextBtn.addEventListener("click", () => {
	  console.log(tourList.style.transform = "translateX(-30%)");
	  if (counter >= 3) return;
	  tourList.style.transition = "transform 0.3s ease-in-out";
	  counter++;
	  tourList.style.transform = "translateX(-" + 380 * counter + "px)";
	  // 마지막에는 오른쪽 클릭버튼 안나오게 하기
	});
	
	rePrevBtn.addEventListener("click", () => {
  	  alert("왔어?")
	  if (counter <= 0) return;
	  tourList.style.transition = "transform 0.3s ease-in-out";
	  counter--;
	  tourList.style.transform = "translateX(" + 380 * counter + "px)";
	  // 마지막에는 왼쪽 클릭버튼 안나오게 하기
	});
})