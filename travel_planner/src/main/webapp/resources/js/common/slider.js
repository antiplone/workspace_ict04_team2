document.addEventListener("DOMContentLoaded", (e) => {
	const carouselSlide = document.querySelector(".slide_list");
	const carouselContents = document.querySelectorAll(".slide_item");
	
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
	  let a = carouselContents[counter].getAttribute('data-num');
	  page_current.innerHTML = "<span> 0" + a + "</span>";	  
	  console.log("a2 " + a);
	  carouselSlide.style.transform = "translateX(" + -size * counter + "px)";
	  
	});
	
	prevBtn.addEventListener("click", () => {
	  if (counter <= 0) return;
	  carouselSlide.style.transition = "transform 0.3s ease-in-out";
	  counter--;
	  let a = carouselContents[counter].getAttribute('data-num');
	  page_current.innerHTML = "<span> 0" + a + "</span>";	
	  console.log("a3 " + a);
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