#!/bin/bash
echo $1
OUT=$(echo $1 | grep -i artifact)
echo $OUT 
