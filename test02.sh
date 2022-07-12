#!/bin/dash  
export PATH=$PATH:.

# checks if add and commit works after manually deleting file 
legit-init 
touch a
legit-add a
legit-commit -m 'first'
echo hello > a
legit-commit -a -m 'second'
rm a
legit-add a
legit-commit -m 'third'

rm -rf .legit
