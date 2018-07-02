default:
awk '{print}' employee.txt

search and print 'manager':
awk '/manager/ {print}' employee.txt 

print the first and the fourth item:
awk '{print $1,$4}' employee.txt

display line number:
awk '{print NR,$0}' employee.txt

as NF variable represnts the number of fields in one record:
awk '{print $1,$NF}' employee.txt
the same as awk '{print $1,$4}' employee.txt

Display Line From 3 to 6
awk 'NR==3, NR==6 {print NR,$0}' employee.txt 

To print the first item along with the row number(NR) separated with ” – “:
awk '{print NR "- " $1 }' geeksforgeeks.txt

To return the second row/item from geeksforgeeks.txt:
awk '{print $2}' geeksforgeeks.txt

To print any non empty line if present:
awk 'NF > 0' geeksforgeeks.txt

To find the length of the longest line present in the file:
awk '{ if (length($0) > max) max = length($0) } END { print max }' geeksforgeeks.txt

To count the lines in a file:
awk 'END { print NR }' geeksforgeeks.txt

Printing lines with more than 10 characters:
awk 'length($0) > 10' geeksforgeeks.txt

To find/check for any string in any column:
awk '{ if($3 == "B6") print $0;}' geeksforgeeks.txt

To print the squares of first numbers from 1 to n say 6:
awk 'BEGIN { for(i=1;i<=5;i++) print "square of", i, "is",i*i; }'

