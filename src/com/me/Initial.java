package com.me;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Scanner;


public class Initial extends Thread{
	public Scanner console ;
	//public List<Player> playerInformation;
	public List<Poker> pokerList ;
	public List<Poker> player1; 
	public List<Poker> player2; 
	public List<Poker> auto; 
	//public List<PlayerBigPoker> compare; 
	public Initial(){
		//playerInformation = new ArrayList<Player>();
		pokerList = new ArrayList<Poker>();
		player1 = new ArrayList<Poker>();
		player2 = new ArrayList<Poker>();
		auto = new ArrayList<Poker>();
		console = new Scanner(System.in);
	}
	public void handPoker(){
//		
		/**
		 * 用于防止多次出现同一张牌
		 */
		for(int i = 0 ; i < 10 ; i ++){
			Poker d1 = new Poker();
			do{
				d1.deal();
			}while(pokerList.contains(d1));
			pokerList.add(d1);
		}
		/**
		 * 给参与玩家进行发牌
		 */
		for(int i = 0 ; i < 10 ; i ++ ){
			Poker d = new Poker();
			d = pokerList.get(i);
			if(i % 2 == 0){
				player1.add(d);
			}else{
				auto.add(d);
			}
		}
	}
	public void throwPoker2(){//不看牌情况下的双方随机弃牌
		Random rand = new Random();

		
		int a,b;
	    while(true){
	    	a = rand.nextInt(5);
		    b = rand.nextInt(5);
		    if(a != b)
		    	break;
		    else
		    	continue;       
	    }
	    //System.out.println(a+""+b+" ");
	    Poker[] aut = {auto.get(a),auto.get(b)};
	    auto.removeAll(Arrays.asList(aut));
		Collections.sort(auto);
	    Poker[] play = {player1.get(a) , player1.get(b)};
	    player1.removeAll(Arrays.asList(play));
		Collections.sort(player1);
	}	
	
	public void sort() {
		Collections.sort(auto);
		Collections.sort(player1);	
	}
	public void throwPoker1(){
		Random rand = new Random();

		
		int a,b;
	    while(true){
	    	a = rand.nextInt(5);
		    b = rand.nextInt(5);
		    if(a != b)
		    	break;
		    else
		    	continue;       
	    }
	    //System.out.println(a+""+b+" ");
	    Poker[] aut = {auto.get(a),auto.get(b)};
	    auto.removeAll(Arrays.asList(aut));
		Collections.sort(auto);
		
//		CompareHandPoker chp = new CompareHandPoker(player1, auto);
//		chp.compareHandPoker();
	}
	public void throwPoker(){
		Random rand = new Random();
		System.out.println("请弃两张牌");
		System.out.println("输入1~5相应序号即可");
		
		int a,b;
		a = console.nextInt();
	    b = console.nextInt();
	    
	    Poker p1 = new Poker();
	    
	    Poker[] play = {player1.get(a-1),player1.get(b-1),p1,null};
	    player1.removeAll(Arrays.asList(play));
	    while(true){
	    	a = rand.nextInt(5);
		    b = rand.nextInt(5);
		    if(a != b)
		    	break;
		    else
		    	continue;       
	    }
	    
	    Poker[] aut = {auto.get(a),auto.get(b)};
	    auto.removeAll(Arrays.asList(aut));
		
		System.out.println("您现在的手牌是:");
		for (Poker poker : player1) {
			System.out.print(poker.colour + poker.Num+"   ");
		}
		System.out.println();
		Collections.sort(player1);
		
		System.out.println("电脑现在的手牌是：");
		for (Poker poker : auto) {
			System.out.print(poker.colour + poker.Num+"   ");
		}
		System.out.println();
		Collections.sort(auto);
		
		CompareHandPoker chp = new CompareHandPoker(player1, auto);
		chp.compareHandPoker();
	}
}

