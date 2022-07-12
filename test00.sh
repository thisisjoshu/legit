#!/bin/dash  
export PATH=$PATH:.

# checks that add works with valid and invalid names
# also checks errors of add

legit-init 
touch a+.txt b$
legit-add a+.txt b$
legit-add b$
touch a 
legit-add
legit-add a
rm -rf .legit
legit-add a
legit-init
legit-add c

rm a a+.txt b$
rm -rf .legit
