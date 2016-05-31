#!/bin/bash -e

for name in * ; do

    echo "<a href=\"$name\">$name</a><br>"

done > index.html

