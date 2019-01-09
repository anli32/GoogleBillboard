public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
    // Pull out 10 consecutive numbers of e at a time
    int start = 2;
    int end = 12;
    for(int i = 0; i < e.length() - 11; i++) { //stop after 11 because 1 before length of string and stop before end, and since we are looking at groups of ten it would be 10 + 1 = 11
    	Double dNum = Double.parseDouble(e.substring(start, end));
    	start = start + 1; //? Why doesn't it work when I add i; because i changes from 1, 2, 3, so we are are not increasing by 1 each, time; I could however set start = 2 and end = 12 each time it loops, so that it would be adding 1 or 2 to 2 and 2, and not adding a changing value to a changing start and end value as well 
    	end = end + 1;

    	if(isPrime(dNum) == true) {
    		System.out.println(dNum);
    	}
    }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if(dNum < 2){ 
    	return false;   
	}

    for(int i = 2; i <= Math.sqrt(dNum); i++) {
    	if(dNum % i == 0) {
    		return false;
    	}
    }

    return true;  
} 
