#!/bin/bash
for ((i = 1; i <= 5; i++ ))
do
   echo "Test 0${i}"
   time python src/main.py -f tests/in_test_0${i}.txt tests/out_test_0${i}_1.txt tests/out_test_0${i}_2.txt
done
printf 'Test Random\n'
time python src/main.py -n 1000 tests/out_test_random_1.txt tests/out_test_random_2.txt