
public class FactorialRecursive {
	
	public static int getFactorial(int n) 
	{
		if (n == 0)
		{
			return 1;
		}
		return getFactorial(n-1)*n;
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(FactorialRecursive.getFactorial(5));
	}

}
