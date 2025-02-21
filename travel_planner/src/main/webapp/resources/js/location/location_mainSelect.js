/**
 * location_main.js  => location_main.jsp, location_mainListAction.jsp 에 사용
 */
 
 /*  투어API 연결
 $(function() {
    let tourAPI = "http://apis.data.go.kr/B551011/KorService1/detailCommon1?ServiceKey=vQkOIwgxBt6hPrd9oi4ilRgPxTnXhFRqIz7ouD4HcxfgOEeCxXczaQREqB%2BjK4xU5q2kdCMqR1HxfC4woJd9Yg%3D%3D&contentTypeId=38&contentId=2750143&MobileOS=ETC&MobileApp=AppTest&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&_type=json";
    $.getJSON(tourAPI)
       .done(function(data) {
          $.each(data.response, function(i, item) {
             console.log(item);
             $("body").append(JSON.stringify(item));
//             window.location = "login_action.do?item=" + item;
          });
       });
 }); 



 function gu_choice() {
	 // 선택한 '구' 정보 가져오기
	 let checks = "";
		for(let i=0; i<document.gu_form.gu_select.length; i++){
			if(document.gu_form.gu_select[i].checked){
				checks += document.gu_form.gu_select[i].value + "@";
			}
		}
	
	// 해당 팝업창 닫으면서 페이지 이동 (선택한 '구'에 해당되는 리스트 페이지로)
	//alert(checks);
	 opener.location.href = "${path}/location_mainListAction.lc?location_si=${tc_si_num}&location_gu=" + checks; // 추가
	 self.close();
}*/
