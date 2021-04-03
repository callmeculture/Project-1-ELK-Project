#!/bin/bash
Cities=('Minneapolis' 'Saint Paul' 'Boston' 'Las Vegas' 'Madison')
for City in ${Cities[@]};
do
 if [ $City == 'Minneapolis' ];
 then
  echo "Minneapolis is the best!"
 else
  echo "I do not enjoy Minneapolis"
 fi
done

for City in ${Cities[@]};
do
 echo  "${City} is the best"
done
