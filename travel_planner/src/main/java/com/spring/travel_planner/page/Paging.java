package com.spring.travel_planner.page;

public class Paging {
	
	/** 현재 페이지에서 보여질 게시글 갯수 */
	private int pageSize = 10;
	/** 총게시글(행)수 */
	private int total = 0;
	/** 아직 사용중이지 않은, 페이지번호 */
	private int number = 0;
	/** 매개변수 생성자에서 현재화면에 보여줄 페이지가 어떤 페이지인지, 넘겨줌 */
	private String pageNum;     
	
	/** 페이지에서 보여줄 게시글의 시작번호 */
	private int startRow;
	/** 페이지에서 보여줄 게시글의 마지막(끝)번호 */
	private int endRow;

	/**
	 * 현재페이지(화면, 쪽)<br>
	 * 모든 기준이 currentPage로부터 화면이 계산이 되기 때문에 ★중요★
	 */
	private int currentPage;
	/** <<< 전체 페이지수 >>><br>
	 * total(게시글수) / pageSize(몇개의 게시글을 보여줄지)
	 * + (total % pageSize == 0 ? 0 : 1)
	 * => 게시글이 몇개를 보여줄지와 딱 떨어지지 않을때의 나머지글들을 보여줄때
	 */
	private int pageCount;
	/** 현재페이지에서 보여줄 시작쪽 */
	private int startPage;
	/** 쪽수를 보여줄 범위 */
	private int pageBlock;
	/** 현재페이지에서 보여줄 마지막쪽 */
	private int endPage;
	
	/** 이전 버튼을 눌렀을때, Paging생성자에 매개변수로 넘겨줌 */
	private int prev;
	/** 다음 버튼을 눌렀을때, Paging생성자에 매개변수로 넘겨줌 */
	private int next;
	
	// 생성자
	public Paging() {}
	/**
	 * @param pageNum 현재페이지가 어떤 페이지(화면 기준)인지 알기위해 받아온다.
	 */
	public Paging(String pageNum) {
		
		// pageNum이 없는 경우(맨처음 board_list.jsp를 클릭하거나, 수정 삭제 등 다른 게시글에서 페이지를 클릭할 때) null처리되므로 1로 설정 
		if(pageNum == null) {
			pageNum = "1";
		}
		
		this.pageNum = pageNum;
		
		currentPage = Integer.parseInt(pageNum);  // 현재페이지
		
		System.out.println("=====================");
		System.out.println("pageNum => " + pageNum);
		System.out.println("currentPage => " + currentPage);
	}

	// getter setter ---------------
	public int getPageSize() { return pageSize; }
	public void setPageSize(int pageSize) { this.pageSize = pageSize; }

	public int getTotal() { return total; }
	public void setTotal(int total) { this.total = total; }

	public int getNumber() { return number; }
	public void setNumber(int number) { this.number = number; }

	public String getPageNum() { return pageNum; }
	public void setPageNum(String pageNum) { this.pageNum = pageNum; }

	public int getStartRow() { return startRow; }
	public void setStartRow(int startRow) {	this.startRow = startRow; }

	public int getEndRow() { return endRow; }
	public void setEndRow(int endRow) { this.endRow = endRow; }

	public int getCurrentPage() { return currentPage; }
	public void setCurrentPage(int currentPage) { this.currentPage = currentPage; }

	public int getPageCount() { return pageCount; }
	public void setPageCount(int pageCount) { this.pageCount = pageCount; }

	public int getStartPage() { return startPage; }
	public void setStartPage(int startPage) { this.startPage = startPage; }
	
	public int getPageBlock() { return pageBlock; }
	public void setPageBlock(int pageBlock) { this.pageBlock = pageBlock; }

	public int getEndPage() { return endPage; }
	public void setEndPage(int endPage) { this.endPage = endPage; }

	public int getPrev() { return prev; }
	public void setPrev(int prev) { this.prev = prev; }

	public int getNext() { return next; }
	public void setNext(int next) { this.next = next; }
	
	// getter setter E ---------------
	
	/**
	 * @param count DB에서 가져온 총 게시글수(행)
	 */
	public void setTotalCount(int count) {  
		this.total = count;  // 전체 게시글수(행)

		/*
		 * 페이지별 게시글(행:항목)의 시작번호 => start에 해당 (1)
		 * startRow = (현재페이지:화면기준 - 1) * 게시글 보여줄 갯수 + 1;
		 */
		startRow = (currentPage - 1) * pageSize + 1; // BoardServiceImpl에서 getter로 가져옴
		/*
		 * 페이지별 게시글(행:항목)의 끝번호 => end에 해당(10)
		 * endRow = 현재페이지:화면기준 * 게시글 보여줄 갯수;
		 */
		endRow =  currentPage * pageSize; // BoardServiceImpl에서 getter로 가져옴
		
		System.out.println("startRow => " + startRow);
		System.out.println("endRow => " + endRow);
		
		this.number = count - (currentPage - 1) * pageSize;  // 페이지번호(1)
		
		// 페이지 계산
		pageCalculator();
	}

	// 페이지 계산 : 페이지(화면)와 쪽(하단 숫자 선택부)을 잘 구분해야합니다.
	/**
	 * board_list.jsp에서 사용중인 멤버변수
	 * => startPage, endPage, pageCount, prev, next
	 */
	public void pageCalculator() {
		if(total > 0) {

			/* <<< 전체 페이지수 >>>
			 * total(게시글수) / pageSize(몇개의 게시글을 보여줄지)
			 * + (total % pageSize == 0 ? 0 : 1)
			 * => 게시글이 몇개를 보여줄지와 딱 떨어지지 않을때의 나머지글들을 보여줄때
			 */
			pageCount = total / pageSize + (total % pageSize == 0 ? 0 : 1);

			System.out.println("게시판의 총페이지 수 : " + pageCount);
			
//			startPage = 1; // 굳이, 초기화를 안시켜도 작동, 바로 밑에서 if문으로 계산을 해버려서
			
			pageBlock = pageSize; // 하단에 쪽수가 15개까지 보여주고 싶으면, 15로 바꾸면 됩니다.
			/* *** 여기서부터의 currentPage는 '쪽수'랑 계산하기위해서 쓰입니다. *** */
			if(currentPage % pageBlock != 0) { // 현재 페이지가 쪽수범위에 들어오는가? 10 % 10이 아닐때,
				// (2~9) * 10 + 1;
				// (int) => 나누기 했을 때 실수가 나올 수 있기 때문에, (int)를 붙인다.
				startPage = (int)(currentPage / pageBlock) * pageBlock + 1;
			}
			else { // 허용범위를 넘었을때, 10 % 10 = 0일때
				// (1 - 1) * 10 + 1;
				startPage = ((int)(currentPage / pageBlock) - 1) * pageBlock + 1;
			}
			
			// System.out.println("startPage : " + startPage); // 디버그 코드
			
			// = 위에서 계산된 시작페이지 + 하단 쪽수 - 1
			endPage = startPage + pageBlock - 1;
			
			// 쪽수가 보여줄수있는 범위를 벗어나버리면, 마지막 쪽수를 넣어줌
			if(endPage > pageCount) endPage = pageCount;
			// System.out.println("endPage : " + endPage); // 디버그 코드
			
			// 이전 : pageBlock인 이유, 최소값(쪽수) 기준으로 prev값을 계산하기위해
			// board_list.jsp에서 이전 버튼을 누르면, currentPage로 연결시켜줌
			if(startPage > pageBlock) prev = startPage - pageBlock;
			
			// 다음 : pageCount인 이유 최대값(쪽수) 기준으로 next값을 계산하기위해
			// board_list.jsp에서 다음 버튼을 누르면, currentPage로 연결시켜줌
			if(startPage < pageCount) next = startPage + pageBlock;
			
			// 디버그 코드
			// System.out.println("prev : " + prev);
			// System.out.println("next : " + next);
		}
	}
}
