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
 }); */

 
 
/* '시' 선택 시 service로 값 전달 + '구'선택 팝업창 
function si_select(){
	 window.open("${path}/location_mainSelect.lc?location_si=" + document.locationMain.si_choice.value, "_blank", "width=500, height=200")
 }*/