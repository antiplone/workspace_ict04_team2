document.addEventListener("DOMContentLoaded", (e) => {
	const carouselSlide = document.querySelector(".slide_list");
	const carouselContents = document.querySelectorAll(".slide_item");
	const slideBoxWrap = document.getElementById("slide_box_wrap");
	
	const prevBtn = document.querySelector(".prevBtn");
	const nextBtn = document.querySelector(".nextBtn");
	
	//counter
	let counter = 1;
	const size = carouselContents[0].clientWidth;
	console.log("carouselSlide : " + carouselSlide);
	
	carouselSlide.style.transform = "translateX(" + -size * counter + "px)";
	const slideItem = document.querySelector(".slide_item");
	const page_current = document.getElementById("page_current");
	
	//Button Listeners
	nextBtn.addEventListener("click", () => {
	  if (counter >= carouselContents.length - 1) return;
	  carouselSlide.style.transition = "transform 0.3s ease-in-out";
	  counter++;
	  /* 슬라이드 번호 가져오기 */
	  let slideDataNum = carouselContents[counter].getAttribute('data-num');
	  page_current.innerHTML = "<span> 0" + slideDataNum + "</span>";	  

	  let slideBoxWrapColor = carouselContents[counter].getAttribute('data-color');
	  console.log("slideBoxWrapColor : " + slideBoxWrapColor);
	  slideBoxWrap.dataset.color = slideBoxWrapColor;
	  console.log("slideBoxWrap.data-color : " + slideBoxWrap.dataset.color);
	  
	  
	  carouselSlide.style.transform = "translateX(" + -size * counter + "px)";
	  
	});
	
	prevBtn.addEventListener("click", () => {
	  if (counter <= 0) return;
	  carouselSlide.style.transition = "transform 0.3s ease-in-out";
	  counter--;
	  let slideDataNum = carouselContents[counter].getAttribute('data-num');
	  page_current.innerHTML = "<span> 0" + slideDataNum + "</span>";
	  
	  let slideBoxWrapColor = carouselContents[counter].getAttribute('data-color');
	  console.log("slideBoxWrapColor : " + slideBoxWrapColor);
	  slideBoxWrap.dataset.color = slideBoxWrapColor;
	  
	  carouselSlide.style.transform = "translateX(" + -size * counter + "px)";
	});
	console.log(carouselContents.length);
	
	
	carouselSlide.addEventListener("transitionend", function () {
	  if (carouselContents[counter].id === "lastClone") {
	    carouselSlide.style.transition = "none";
	    counter = carouselContents.length - 2;
	    carouselSlide.style.transform = "translateX(" + -size * counter + "px)";
	  }
	  if (carouselContents[counter].id === "firstClone") {
	    carouselSlide.style.transition = "none";
	    counter = carouselContents.length - counter;
	    carouselSlide.style.transform = "translateX(" + -size * counter + "px)";
	  }
	});

})