#Listing Files and Directories
ls #to list all files and directories
ls -a #even the hidden ones
ls -l /var/log/ #list files in a long listing format of a specific directory
ls -a -l #is equal to:
ls -al
ls -alh #"h" stands for a human readible format (sizes: K, M, etc.)

#File System Tree
/ #the root directory (no other directory above)
#Absolute path example: /home/alvin/Documents/Invoice.pdf (always starts with the root "/")s

#Current or Working Directory
pwd #print working directory (to see a current/working directory)
cd /var/log #change the directory to '/var/log'
cd .. #takes into a parent directory above

#Relative Path
#Current directory /home/alvin + relative path: 
Documents/Invoice.pdf #takes us to the file
# /home/alvin + relative path:
../Invoice.pdf #takes us to /home/Invoice.pdf file above
../../Invoice.pdf #takes us to /Invoice.pdf
#From /var/log the command:
cd / #takes us to /
cd - #takes us to the previous directory
cd #always takes you back to the home directory

#Creating Files and Directories
touch Receipt.pdf #creates a file within a current directory
touch /home/martin/Receipt.pdf #creates a file within another directory
touch ../martin/Receipt.pdf #same as above if we work from /home/alvin
mkdir Receipts #makes a new directory within the current one

#Copying Files and Directories
cp [source] [destination] #copies the file from the source to the destination:
cp Receipt.pdf Receipts/ #copies Receipt.pdf from the current /home/alvin to the /home/alvin/Receipts
cp Receipt.pdf Receipts/ReceiptCopy.pdf #to specify the new name when copying
cp -r [source] [destination] #"-r" stands for recursive
cp -r Receipts/ BackupOfReceipts/ #from /home/alvin/Receipts/ to /home/alvin/BackupOfReceipts/

#Moving Files and Directories
mv [source] [destination] #moves the file from the current directory to the destination (not copying)
mv Receipt.pdf Receipts/
mv Receipt.pdf NewReceipt.pdf #to rename a file
mv Receipts/ NewReceipts/ #to rename a directory (no need for "-r" flag this time)

#Deleting Files and Directories
rm Invoice.pdf #removes the file from the current directory
rm -r Invoices/ #to remove the directory