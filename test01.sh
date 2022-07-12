#!/bin/dash  
export PATH=$PATH:.

# checks errors of commit
legit-init 
touch a b c
legit-commit 'first'
legit-commit -m 'first'
legit-add a b c
legit-commit 'first'
legit-commit -m 'first'
echo 1 > a
echo 2 > b
echo 3 > c
legit-commit -a 'second'
legit-commit -a -m 'second'
legit-commit -a -m 'third'
legit-show 1:a
legit-show 1:b
legit-show 1:c
legit-log

rm a b c
rm -rf .legit
