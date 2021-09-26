#!/bin/bash
if test ! -d $1 
then
  rm -f $1
  mkdir $1

  if test ! -d $1
  then
    echo "impossible de creer le repertoire"
  fi
else
  echo "You must enter a directory name or this directory already exist"
fi
cd $1
