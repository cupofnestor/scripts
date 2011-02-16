#! /bin/bash
cd $1

for i in `ls *.mov`;
do
/Users/nestor/scripts/brightsign.sh $i
done