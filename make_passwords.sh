#!/bin/bash
for ((i=0; i<$@; i++))
do
	export p=`dd if=/dev/urandom bs=1 count=100 2>/dev/null | base64 -w0 ; echo` ; echo ${p:14:20}
done
