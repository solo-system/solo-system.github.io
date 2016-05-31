#!/bin/bash -e

for name in * ; do

    echo "<a href=\"$name\">$name</a>"

done > index.html

