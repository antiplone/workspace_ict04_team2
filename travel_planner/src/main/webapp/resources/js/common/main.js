document.addEventListener("DOMContentLoaded", (e) => {

	const toggleBtn = document.querySelector(".navbar_toggleBtn");
	const menu= document.querySelector(".navbar_menu");
	const icons= document.querySelector(".navbar_icons");
	const menulists= document.querySelectorAll(".navbar_menu li");
	const menulista= document.querySelectorAll(".navbar_menu li.active");
	
	console.log(menulists);
	 
	/*hamburger bar toggle button*/
	toggleBtn.addEventListener('click', ()=>{
		menu.classList.toggle('active');
		icons.classList.toggle('active');
	})
	
	
	
	/*navbar menu active button*/
	menulists.forEach((menulist, index) => {
		menulist.addEventListener("click",function(){
	    if (this.classList.contains("active")) {
	    	for(var i = 0; i < menulists.length; i++ ){
          		menulists[i].classList.remove("active");
    		}
	    } 
    	this.classList.add("active");
      });
    });
    
    /* footer */
	const footerBtn = document.querySelector(".footer_toggle");	// 클릭할 버튼
	const detail = document.querySelector(".footer_detail");    // toggle할 내용
	const footers = document.querySelector(".footer");		    // footer 높이
	const arrow = document.querySelector("#entre");				// 화살표 아이콘
	
	footerBtn.addEventListener("click", () => {
		detail.classList.toggle("active");
		footers.classList.toggle("hei");
		arrow.classList.toggle("arrow-up");
	});
})
