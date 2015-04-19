#include <stdio.h>
int main(int argc, char** argv)
{
	printf("Content-type:text/html\r\n\r\n");
	printf("<html>");
	printf("<head>");
	printf("<title>cgi-bin programming using C</title>");
	printf("</head>");
	printf("<body>");
	printf("<h2>Hello, World!<br>This is my first cgi-bin program in C.</h2>");
	printf("</body>");
	printf("</html>");
}
