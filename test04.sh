#!/bin/dash  
export PATH=$PATH:.

# checks general legit-show errors

legit-init 
touch a
legit-add a
legit-commit -m 'first'
legit-rm --cached a
legit-show :a
legit-show 0:a
legit-show 0:b


rm a
rm -rf .legit
