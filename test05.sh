#!/bin/dash  
export PATH=$PATH:.

# checks warning errors of rm and status

legit-init 
touch a b c
legit-status
echo 1 > a
echo hi > b
legit-add a b c
legit-commit -m 'first'
echo 2 >> a
echo there >> b
echo comp2041 > c
legit-add a b c
legit-rm c
echo 3 >> a
legit-rm --cached a
legit-rm b
legit-status


rm a b c
rm -rf .legit


