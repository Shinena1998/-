package com.me;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;



public class ThrowPoker {
	public String p1 , p2 , p3 , p4 , p5 ;
	public Poker pp1=null , pp2=null , pp3=null , pp4=null , pp5=null ;
	public int b = 0 , g = 0; 
	public int[] p = { 1 , 1 , 1 , 1 , 1 } ;
	public int playG = 0, autoG = 0;
	public PokerGrade pg;
	public List<Poker> player1 , auto ;
	Random rand = new Random();
	public Initial It ;
	public String str ;
	/**
	 * Launch the application.
	 */

	/**
	 * Create the application.
	 * 
	 */
	public ThrowPoker() {
		It = new Initial();
		It.handPoker();
	}
	/*public void contain(final PokerGrade pg , String str){
		this.pg = pg;
		this.str = str ;
	}*/

	/**
	 * Initialize the contents of the frame.
	 */
	public void makeAutoPoker(){
		if(str.equals("easist")){
			AutoDifficult ad = new AutoDifficult(It.auto) ;
			ad.pokerGroup();
			int i = rand.nextInt(5) ;
			auto = ad.poker.get(i) ;
		}else if(str.equals("simple")){
			AutoDifficult ad = new AutoDifficult(It.auto) ;
			ad.pokerGroup();
			int i = rand.nextInt(5) ;
			auto = ad.poker.get(i) ;
		}else if(str.equals("normal")){
			AutoDifficult ad = new AutoDifficult(It.auto) ;
			ad.pokerGroup();
			int i = rand.nextInt(10) ;
			while(true){
				if(i >= 5){
					 auto = ad.poker.get(i) ;
					 break ;
				}
				i = rand.nextInt(10) ;
			}
		}else if(str.equals("high level")){
			AutoDifficult ad = new AutoDifficult(It.auto) ;
			ad.pokerGroup();
			auto = ad.poker.get(9) ;
		}
	}
	public void initialize() {
//		Initial it = new Initial();
//		It.handPoker();
		this.p1 = It.player1.get(0).colour + It.player1.get(0).Num;
		this.p2 = It.player1.get(1).colour + It.player1.get(1).Num;
		this.p3 = It.player1.get(2).colour + It.player1.get(2).Num;
		this.p4 = It.player1.get(3).colour + It.player1.get(3).Num;
		this.p5 = It.player1.get(4).colour + It.player1.get(4).Num;
//					ThrowHandPoker thp = new ThrowHandPoker();
//					//thp.contain(PokerWindow.this);
//					thp.save(It.player1,auto,pg,str);
//					thp.initialize();
					/*AddGrade ag = new AddGrade();
					ag.contain(It.player1, auto, pg, str);
					ag.autoAddGradeRular();
					ag.initialize();*/
	}
	public void throwP(String p1,String p2,String p3,String p4,String p5) {
		if(p1==null)
		    pp1=It.player1.get(0);
		if(p2==null)
			pp2=It.player1.get(1);
		if(p3==null)
			pp3=It.player1.get(2);
		if(p4==null)
			pp4=It.player1.get(3);
		if(p5==null)
			pp5=It.player1.get(4);
		//System.out.println(pp2.colour+pp2.Num+pp3.colour+pp3.Num+pp4.colour+pp4.Num);
		Poker[] play = {pp1,pp2,pp3,pp4,pp5};	
		It.player1.removeAll(Arrays.asList(play));
		Collections.sort(It.player1);
	}
				
}

