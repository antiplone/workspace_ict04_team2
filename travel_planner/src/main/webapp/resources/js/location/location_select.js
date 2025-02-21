/**
 * location_select.js
 */
 
// 3. 자식창에서 부모창으로 userid값 전달 => 사용 가능한 id를 찾은 경우
// opener: window 객체의 open() 메서드로 열린 자식창(=중복확인창)에서 부모창(=회원가입창)에 접근할때 사용
// hiddenUserid : 중복확인 버튼 클릭 여부 체크(0: 클릭X, 1: 클릭O)
// self.close(); : 자식창 닫기
function gu_select() {
	self.close();
	window.location="${path}/location_seoul.lc"
}
 
 