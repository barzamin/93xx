#!/bin/bash

for jed in 9300_Series_GALS/*.JED; do
	echo $jed
	$GUY $jed -d gal16v8 -p softaccess_portmap.ron > raw_decomp/$(basename $jed).v
done