public class Hello_World
{
	public static void main(String args[])
	{
		while(true)
		{
			System.out.println("Hello World");
			try
			{
				Thread.sleep(6000);
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
		}
	}
}
