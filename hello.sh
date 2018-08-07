#!/usr/bin/env bash

# implement the function
function hello(){
  echo "Hello ${1}, welcome to the echoMachinator! Have a nice day!"
}

# use the function
user=${1}

# hello user
hello ${user}
