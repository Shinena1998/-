package com.me;


import java.util.List;
import java.util.Random;
public class AddGrade {
	public int b = 0 , g = 0 , d= 0 , l = 0 , n = 0 , x = 0; //d传递电脑的牌的好坏,l,n标记当前加分,x控制正确显示
	public int[] p = { 1 , 1 , 1 , 1 , 1 } ;
	public int playG = 0, autoG = 0 , autoGrade=0;//autoGrade选择电脑加分
	public PokerGrade pg;
	public List<Poker> player1 , auto ;
	public String str ;
	
	
	public int i = 3 ,j = 0;//调整完成按钮显示

	/**
	 * Launch the application.
	 */
//	public static void main(String[] args) {
//		AddGrade add = new AddGrade();
//
//		add.pg.winGrade = 0 ;
//		add.initialize();
//	}
	/**
	 * Create the application.
	 */
	public AddGrade() {
	}
	public void contain(List<Poker> player1,List<Poker> auto , final PokerGrade pg , String str){
		this.player1 = player1;
		this.auto = auto ;
		this.pg = pg ;
		this.str = str ;
	}
	/**
	 * Initialize the contents of the frame.
	 */
	public void autoAddGradeRular(){
		Poker ah1 = auto.get(0);
		Poker ah2 = auto.get(1);
		Poker ah3 = auto.get(2);
		if(ah1.color == ah2.color && ah2.color == ah3.color){
			 d = 1 ;
		}else if(ah1.num == ah2.num && ah2.num == ah3.num){
			d = 0 ;
		}else if(ah1.num + 1 == ah2.num && ah2.num == ah3.num - 1){
			d = 2 ;
		}else{
			d = 3 ;
		}
	}
	public void initialize() {
						        		Random rand = new Random();
						        		if(d == 3 ){
						        			autoGrade = 2;
						        		}else if(d == 2 || d == 1){
						        			autoGrade = rand.nextInt(4) + 1;
						        		}else if(d == 0){
						        			autoGrade = 4;
						        		}
								        	switch (autoGrade) {
											case 1:
												autoG = autoG + 0 ;
												n = 0;
												//pg.winGradeP = 0 ;
												break;
											case 2:
												autoG = autoG + 1 ;
												n = 1;
												//pg.winGradeP = 1 ;
												break;
											case 3:
												autoG = autoG + 3 ;
												n = 3;
												//pg.winGradeP = 3 ;
												break;
											case 4:
												autoG = autoG + 5 ;
												n = 5 ;
												break;
											default:
												break;
						        		    }


}}
