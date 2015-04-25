/** Mark Deegan
Sat 25 Apr 2015 16:05:06 IST
*/

/** class fifth for use in testing cgi-bin scripts on Apache server */
public class fifth
{
	/** main method to print HTL code to send back to browser */
	public static void main(String[] args)
	{
		System.out.println("Content-type:text/html");
		System.out.println("");
		System.out.println("");
		System.out.println("<html>");
		System.out.println("<head>");
		System.out.println("<title>cgi-bin programming using java (fifth.java)</title>");
		System.out.println("</head>");
		System.out.println("<body>");
		System.out.println("<h2>Hello, World!<br>This is my first cgi-bin program in java (fifth.java).</h2>");

		/** list out standard java environment properties from the server */
		System.getProperties().list(System.out);
		System.out.println("</body>");
		System.out.println("</html>");
	} /** end main mthod */
} /** end class declaration */
