#--help
ls --help #to see the flags are used for listing files options
ls -l #long listing format
journalctl --help #to work with system logs
#lines 1-27 #this output shows it's a pager format, you can navigate through it with arrow keys (up, down), "PgUP", "PgDown" and "q" to exit

#Manual Pages With man Command
man journalctl #a short description what the command does (manual)
man man #see manual pages
#1 Executable programs or shell commands
#2 System calls (functions provided by the kernel)
#3 Library calls (functions within program libraries)
#...
man 1 printf #from the previous command choose the number described

#Searching For Commands - apropos
apropos director #shows all "man" pages having the "director" word in their short descriptions
#This means that it shows all commands containing "director" (e.g. "directory", "directories"). Keep it generic!
#For the 1st time this command shows an error: relies on a database. A program must refresh it occasionally.
#The DB hasn't been created yet, if you just started a VM
sudo mandb #create a DB manually (no need for servers running for a long time already)
apropos director
#...
#mkdir(1)   - make directories #(1) shows that the entry is in the 1st section of the manual pages that system calls (provided by the kernel)
#...
apropos -s 1,8 director #only filters out results that lead to commands from sections 1-8

#TAB: Suggest and Autocomplete
systemc #+TAB will give you:
systemctl #press TAB twice. You'll get a huge lists of suggestions
systemctl list-dep #press TAB will show you:
systemctl list-dependencies
#If pressing TAB once doesn't complete the command. Press again to see a list of suggestions
ls /u #+TAB:
ls /usr/ #press TAB twice again:
#bin/   libexec/    sbin/
#lib/   local/      share/

#Use "man" and "--help" in the beginning, when you explore things