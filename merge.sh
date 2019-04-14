#!/bin/bash
# Test Connection

timestamp=$(date +%T)

#set -x
#rm file1.tmp NO REMOVE FILE
git add .
wait
git commit -m "clean $timestamp from previous with a file1.tmp"
wait
git push
wait

# new file1.tmp in master
echo "#starting new file $timestamp"
echo "#starting new file $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
wait
git commit -m "add $timestamp message in file1.tmp"
wait
git push
wait

#switch to mybranch1
git checkout -b mybranch1 2>/dev/null
wait
echo "#inserting mybranch1 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
#git commit -m "add $timestamp message in file1.tmp"
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1
sed -i "" $'1s/^/from mybranch1 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch1

#switch to mybranch2
git checkout -b mybranch2 2>/dev/null
wait
echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
wait
git add .
git commit -m "updated wait $timestamp"
git push origin mybranch2
#git commit -m "add $timestamp message in file1.tmp"
wait
#git checkout master
#git merge mybranch1
echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#echo "#inserting mybranch2 $timestamp" >> file1.tmp
sed -i "" $'1s/^/from mybranch2 $timestamp branch\\\n/' file1.tmp
git add .
git push origin mybranch2
#

echo "#merge into master both mybranch1 and mybranch2"
git checkout master
wait
#echo "git merge mybranch1"
#git merge mybranch1
#wait
#echo "git merge mybranch1"
#git merge mybranch2
git push