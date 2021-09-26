#! /bin/bash

cp $2 temp
cp -T $1 $2 
cp -T temp $1
