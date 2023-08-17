# This will search all the lines that include "16:17" and then save them in a file named 1617.txt
grep "16:17:" logfile.csv > 1617.txt
cat 1617.txt
echo -e "End of Task 1 ####################################################### \n\n\n\n"

# This will exclude the word "INFO" from the search result, and then save the other results to a file named logWithOutINFO.txt
grep -v "INFO" logfile.csv > logWithOutINFO.txt
cat logWithOutINFO.txt
echo -e "End of Task 2 ####################################################### \n\n\n\n"

# This will take the third group of each line seperated by , -> (classes), then sort the file, then print the uniq value in a new file called allTheClassTypes.txt
awk '{print $3}' FS=, logfile.csv | sort | uniq > allTheClassTypes.txt
cat allTheClassTypes.txt
echo -e "End of Task 3 ####################################################### \n\n\n\n"

# This will filter all the lines that have the 'WARN' keyword then count the identical lines -> print the number of warnings per class in a file named numberOfWarningsPerClass.txt
awk '/WARN/ {print $2,$3}' FS=, logfile.csv | sort | uniq -c > numberOfWarningsPerClass.txt
cat numberOfWarningsPerClass.txt
echo -e "End of Task 4 ####################################################### \n\n\n\n"

