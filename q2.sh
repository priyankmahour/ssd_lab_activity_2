#! /bin/bash
# Question 2 Lab 2 SSD

# cat /etc/shells > file1.txt
# cat grep "^/usr" file1.txt | file2.txt
cat /etc/shells | grep '^/usr' > file2.txt   

file="file2.txt"
while read -r line; do
data=`echo "$line"`
echo ${data##*/}
done <$file