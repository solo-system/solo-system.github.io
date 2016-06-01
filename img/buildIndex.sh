#!/bin/bash -e

for name in * ; do

    echo "<a href=\"$name\">$name</a><br>"

done > index.html


echo "<h1> This is really badly done - sorry </h1>" > bigindex.html

for name in * ; do

    echo "<a href=\"$name\"> <img src=\"$name\" height=200px></img> </a><br>"

done >> bigindex.html

