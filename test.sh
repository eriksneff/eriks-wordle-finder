#!/bin/bash

######################  
# Version History:
# v0.1: Trying this out
######################

if [[ -z $2 ]] ; then echo "no second arg" ; fi

testVar="(?=.*${1^})"
testVar="${testVar}(?!.+${2^})"

cat test.txt | grep -P ${testVar}