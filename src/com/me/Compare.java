package com.me;

import java.util.Comparator;
import java.util.List;

public class Compare implements Comparator<List<Poker>> {

	@Override
	public int compare(List<Poker> o1, List<Poker> o2) {
		// TODO Auto-generated method stub
		Poker ph1 = o1.get(0);
		Poker ph2 = o1.get(1);
		Poker ph3 = o1.get(2);
		Poker ah1 = o2.get(0);
		Poker ah2 = o2.get(1);
		Poker ah3 = o2.get(2);
		if(ph1.num == ph2.num && ph2.num == ph3.num){
			if(ah1.num == ah2.num && ah2.num == ah3.num){
				if(ph1.num > ah1.num)
				return 1;
				else if(ph1.num == ah1.num)
				return 0;
				else
				return -1;
			}else {
				return 1;
			}
		}else if(ph1.color == ph2.color && ph2.color == ph3.color 
				&& ph2.num + 1 == ph3.num && ph2.num - 1 == ph1.num){
			if(ah1.num == ah2.num && ah2.num == ah3.num)
			return -1;
			else if(ah1.color == ah2.color && ah2.color == ah3.color 
					&& ah2.num + 1 == ah3.num && ah2.num - 1 == ah1.num){
				if(ph3.num > ah3.num){
					return 1;
				}else if(ph3.num == ah3.num){
					return 0;
				}else {
					return -1;
				}
			}else{
				return 1;
			}
		}
		else if((ph1.color == ph2.color && ph2.color == ph3.color) && (ph2.num != ph1.num + 1 || ph2.num != ph3.num - 1)){
			if(ah1.num == ah2.num && ah2.num == ah3.num)
			return -1;
			else if(ah1.color == ah2.color && ah2.color == ah3.color&& (ah2.num + 1 == ah3.num && ah2.num - 1 == ah1.num)){
				return -1 ;
			}else if(ah1.color == ah2.color && ah2.color == ah3.color&& (ah2.num + 1 != ah3.num || ah2.num - 1 != ah1.num)){
				
//				if(ph3.num > ah3.num){
//					System.out.println("玩家赢");
//				}else if(ph1.num == ah3.num){
//					System.out.println("平局");
//				}else{
//					System.out.println("电脑赢");
//				}
				if((ph3.num > ah3.num) || (ph3.num == ah3.num && ph2.num > ah2.num) 
						|| (ph3.num == ah3.num && ph2.num == ah2.num && ph1.num > ah1.num)){
					return 1;
				}else if(ph3.num == ah3.num && ph2.num == ah2.num && ph1.num == ah1.num){
					return 0;
				}else if((ph3.num < ah3.num) || (ph3.num == ah3.num && ph2.num < ah2.num) 
						|| (ph3.num == ah3.num && ph2.num == ah2.num && ph1.num < ah1.num)){
					return -1;
				}
			}else{
				return 1;
			}
		}else if(ph2.num + 1 == ph3.num && ph2.num - 1 == ph1.num){
			if(ah1.num == ah2.num && ah2.num == ah3.num){
				return -1;
			}else if(ah1.color == ah2.color && ah2.color == ah3.color){
				return -1;
			}else if(ah2.num + 1 == ah3.num && ah2.num - 1 == ah1.num){
					if(ph3.num > ah3.num){
						return 1;
					}else if(ph3.num == ah3.num){
						return 0;
					}else{
						return -1;
					}
			}else {
				return 1;
			}
		}else if((ph1.num == ph2.num && ph1.num != ph3.num) || (ph2.num == ph3.num && ph1.num != ph3.num)){
			if(ah1.num == ah2.num && ah2.num == ah3.num){
				return -1;
			}else if(ah1.color == ah2.color && ah2.color == ah3.color){
				return -1;
			}else if(ah2.num + 1 == ah3.num && ah2.num - 1 == ah1.num){
				return -1;
			}else if((ah1.num == ah2.num && ah1.num !=ah3.num) || (ah2.num == ah3.num && ah1.num != ah3.num)){
				if(ph2.num > ah2.num){
					return 1;
				}else if(ph2.num == ah2.num){
					if(ph1.num != ph2.num){
						if(ah1.num != ah2.num){
							if(ph1.num > ah1.num){
								return 1;
							}else if(ph1.num == ah1.num){
				
								return 0;
							}else if(ph1.num < ah1.num){
							
								return -1;
							}
						}else if(ah3.num != ah2.num){
							if(ph1.num > ah3.num){
							
								return 1;
							}else if(ph1.num == ah3.num){
								
								return 0;
							}else if(ph1.num < ah3.num){
								
								return -1;
							}
						}
					}else if(ph3.num != ph2.num){
							if(ah1.num != ah2.num){
								if(ph3.num > ah1.num){
									
									return 1;
								}else if(ph3.num == ah1.num){
									
									return 0;
								}else{
									
									return -1;
								}
							}else if(ah3.num != ah2.num){
								if(ph3.num > ah3.num){
									
									return 1;
								}else if(ph3.num == ah3.num){
								
									return 0;
								}else{
									return -1;
								}
							}
			        }
				}else if (ph2.num < ah2.num){
		        	return -1;
		        }
			}else {
				return 1;
			}
		}else{
			if(ah1.num == ah2.num && ah2.num == ah3.num){
				
				return -1;
			}else if(ah1.color == ah2.color && ah2.color == ah3.color){
				
				return -1;
			}else if(ah2.num + 1 == ah3.num && ah2.num - 1 == ah1.num){
				
				return -1;
			}else if((ah1.num == ah2.num && ah1.num !=ah3.num) || (ah2.num == ah3.num && ah1.num != ah3.num)){
				
				return -1;
			}else{
				if((ph3.num > ah3.num) || (ph3.num == ah3.num && ph2.num > ah2.num) 
						|| (ph3.num == ah3.num && ph2.num == ah2.num && ph1.num > ah1.num)){
					
					return 1;
				}else if(ph3.num == ah3.num && ph2.num == ah2.num && ph1.num == ah1.num){
					
					return 0;
				}else{
					
					return -1;
			    }
		    }
		}
		return 0;
	}

	

}
