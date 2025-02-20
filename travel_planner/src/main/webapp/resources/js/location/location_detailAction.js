/**
 * location_detailAction.js
 */
 
/* '상세보기', '후기작성' 클릭 시 해당 위치로 스크롤 이동 */
$(document).ready(function($) {
    $(".place_move").click(function(event){
        console.log(".place_move");         
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);	/* top으로 이동 0.5초 */
    });

});