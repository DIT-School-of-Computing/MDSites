#!/bin/bash

echo "Content-type:text/html"
echo
echo
echo '<html>'
echo '<head>'
echo '<title>cgi-bin programming using bash</title>'
echo '</head>'
echo '<body>'
echo '<h2>Hello, World!<br>This is my first cgi-bin program in bash.</h2>'
echo -n 'The date and time is: '
echo -n `date`
echo '<br>'
echo '<h2>This is not my first cgi-bin program in bash.</h2>'
echo '</body>'
echo '</html>'
