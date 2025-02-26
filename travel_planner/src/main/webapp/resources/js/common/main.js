document.addEventListener("DOMContentLoaded", (e) => {

	const toggleBtn = document.querySelector(".navbar_toggleBtn");
	const menu= document.querySelector(".navbar_menu");
	const icons= document.querySelector(".navbar_icons");
	const menulists= document.querySelectorAll(".navbar_menu li");
	const menulista= document.querySelectorAll(".navbar_menu li.active");
	
	console.log(menulists);
	 
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

// header와 footer 유지한 채로 페이지 변경
/*
function homeMove(path) { // (8)
		$.ajax({
			url : path, // 컨트롤러로 이동(9)
			type : 'POST',
			success : function(result) { // 콜백함수(13) => result는 comment_list
				$('#contents').html(result);
			},
			error : function(j, t, errorThrown) {
				alert(errorThrown);
			},
		})
}
*/

//navbar underline draw
function menulist(data_index){

	// console.log("data_index3 =>" + data_index);
	// console.log("this =>" + $('.navbar .pointerBtn:eq(' + data_index + ')'));
    if ($('.navbar .pointerBtn:eq(' + data_index + ')').hasClass("active")) {
    	return;
    } else{
    	for(var i = 0; i < $('.navbar .pointerBtn').length; i++ ){
      		$('.navbar .pointerBtn:eq(' + i + ')').removeClass("active");
		}
    }
	$('.navbar .pointerBtn:eq(' + data_index + ')').addClass("active");
}

//main_recommoned_js 추천코스 carousel
function mainRecommend(area_id, course_id, course_title, course_taketime, course_tag, course_map, data_index){
		menulist(data_index);
		$.ajax({
			url : 'recommendCourseList.rc', // 컨트롤러로 이동(9)
			type : 'POST',
			data: 'area_id=' + area_id + "&courseId=" + course_id + "&courseTitle=" + course_title + "&courseTaketime" + course_taketime + "&courseTag" + course_tag + "&courseMap" + course_map,
			success : function(result) { // 콜백함수(13) => result는 comment_list
				$('#contents').html(result);
			},
			error : function(j, t, errorThrown) {
				alert(errorThrown);
			},
		}).done(function(courseId){
				onCourseClick(course_id);
				let courseindex = course_id - 1 ;
				$('#modalCourseTitle').text(course_title);
				$('#modalCourseTaketime').text(course_taketime);
				$('#modalCourseTag').text(course_tag);
				$("#modalCourseMap").attr("src", course_map);
		})
}

function onCourseClick(course_id) {
		$.ajax({
			url: '${path}/recommendCourseDetail.rc', // 컨트롤러로 이동
			type: 'POST',
			data: 'area_id=' + area_id + "&courseId=" + course_id + "&courseTitle=" + course_title + "&courseTaketime" + course_taketime + "&courseTag" + course_tag + "&courseMap" + course_map,
			success: function(result) {
				$('#courseInfo').html(result); 	// div id가 courseList인 자리에
				$('#modalCourseTitle').text(course_title);
				$('#modalCourseTaketime').text(course_taketime);
				$('#modalCourseTag').text(course_tag);
				$("#modalCourseMap").attr("src", course_map);
			},
			error: function() {
				alert('recommendCourseDetail() 데이터를 가져오는데 실패하였습니다.');
			}
		});
}