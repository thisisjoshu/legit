#!/bin/dash  
export PATH=$PATH:.

# checks general errors in rm

legit-init 
touch a
legit-add a
legit-rm a
legit-commit -m 'first'
legit-rm
legit-rm a
touch b
legit-rm b

rm b
rm -rf .legit
