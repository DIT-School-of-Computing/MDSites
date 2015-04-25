/** Mark Deegan
Sat 25 Apr 2015 16:06:17 IST
*/

public class sixth
{ /** class sixth prints basic HTML when called as a cgi-bin script on Apache Server */
	public static void main(String[] args)

	{ /** declare main method to print some simple HTML */
		System.out.println("Content-type:text/html");
		System.out.println("");
		System.out.println("");
		System.out.println("<html>");
		System.out.println("<head>");
		System.out.println("<title>cgi-bin programming using java (sixth)</title>");
		System.out.println("</head>");
		System.out.println("<body>");
		System.out.println("<h2>Hello, World!<br>This is my second cgi-bin program in java (sixth.java)</h2>");
		System.out.println("</body>");
		System.out.println("</html>");
	} /** end declaration of main method */
} /** end declaration of class sixth */
