package com.me;

import java.util.Random;


public class Poker implements Comparable<Poker>{
	public int color ;
	public String colour ;
	public int num;
	public String Num ;
	public void deal(){
		Random rand = new Random();
		color = rand.nextInt(4) ;
		switch (color) {
		case 0: 
			colour = "梅花";
			break;
		case 1:
			colour = "方块";
			break;
		case 2:
			colour = "红桃";
			break;
		default:
			colour = "黑桃";
			break;
		}
		num = rand.nextInt(13) + 1;
		if(num > 0 && num <= 9){
			Num = (num + 1) +"";
		}else if(num == 13){
			Num = (num - 12) + "";
		}else if(num == 10){
			Num = "J" ;
		}else if(num == 11){
			Num = "Q" ;
		}else if(num == 12){
			Num = "K" ;
		}
		
	}
	public Poker(){
		
	}
	public Poker(int color , int num){
		this.color = color ;
		this.num = num ;
	}
	
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Poker))
			return false;
		Poker other = (Poker) obj;
		if (Num == null) {
			if (other.Num != null)
				return false;
		} else if (!Num.equals(other.Num))
			return false;
		if (color != other.color)
			return false;
		if (colour == null) {
			if (other.colour != null)
				return false;
		} else if (!colour.equals(other.colour))
			return false;
		if (num != other.num)
			return false;
		return true;
	}
	@Override
	public int compareTo(Poker o) {
		// TODO Auto-generated method stub
		if(this.num > o.num){
			return 1;	
		}
		else if (this.num == o.num){
			return 0;
		}else{
			return -1;
		}
	}

}