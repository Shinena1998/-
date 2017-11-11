package com.me;

public class PokerGrade {
	public int  startAutoGrade , startPlayerGrade , b , winGradeP , winGradeA ,startAllGrade;

	public int pokerGrade(){
		
		if(b == 1) {
			startPlayerGrade = startPlayerGrade + winGradeA ;
			startAutoGrade = startAutoGrade - winGradeA;
			if(startPlayerGrade > startAllGrade){
				startPlayerGrade = startAllGrade ;
				startAutoGrade = 0 ;
			}
		}else if(b == 0){
		}else {
			startAutoGrade = startAutoGrade + winGradeP ;
			startPlayerGrade = startPlayerGrade - winGradeP ;
			if(startAutoGrade > startAllGrade){
				startAutoGrade = startAllGrade ;
				startPlayerGrade = 0 ;
			}
		}
		if(startAutoGrade <= 0){
			return 1 ;
		}else if(startPlayerGrade <= 0){
			return -1 ;
		}else {
			return 0 ;
		}
	}
	public void pokerGrade(int startPlayerGrade){
		this.startPlayerGrade = startPlayerGrade ;
		this.startAutoGrade = startPlayerGrade ;
		this.startAllGrade = startPlayerGrade * 2;
	}
	public PokerGrade() {
		// TODO Auto-generated constructor stub
		this.startAllGrade = 0;
	}
}
