window.onload = function() {
    alert("윈도우 창이 켜졌을 때 바로 실행됨");
    let url= 'main.do' ;
	sendRequest(loadNews_callback, url, "post", "");
	
	// 콜백함수 - 결과처리
	function loadNews_callback() {
		let result = document.getElementById("contents");	
		if(httpRequest.readyState == 4) {	// 4 : completed => 전체 데이터 취득 완료
			if(httpRequest.status == 200) {	// 200 :  정상종료
				// 6-1. 응답결과가 html이면 responseText로 받고, xml이면 responseXML로 받는다.
				result.innerHTML = httpRequest.responseText;
			}
			else {
				result.innerHTML = "status 상태 : " + httpRequest.Status;
			}
			
		}else {
			result.innerHTML = "readyState 상태 : " + httpRequest.readyState;
		}
	}
}

document.addEventListener("DOMContentLoaded", (e) => {
	function load(url) {
		console.log(url)
		// sendRequest(callback, url, method, params) {}
		sendRequest(loadNews_callback, url, "post", "");
	
	}
	// 콜백함수 - 결과처리
	function loadNews_callback() {
		let result = document.getElementById("contents");	
		if(httpRequest.readyState == 4) {	// 4 : completed => 전체 데이터 취득 완료
			if(httpRequest.status == 200) {	// 200 :  정상종료
				// 6-1. 응답결과가 html이면 responseText로 받고, xml이면 responseXML로 받는다.
				result.innerHTML = httpRequest.responseText;
			}
			else {
				result.innerHTML = "status 상태 : " + httpRequest.Status;
			}
			
		}else {
			result.innerHTML = "readyState 상태 : " + httpRequest.readyState;
		}
	}
});
