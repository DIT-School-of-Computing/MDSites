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
echo "$QUERY_STRING"
echo '</body>'
echo '</html>'
