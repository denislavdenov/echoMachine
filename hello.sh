#!/usr/bin/env bash

# implement the function
function hello(){
  echo ${1}
}

# use the function
user=${1}

# hello user
hello ${user}
