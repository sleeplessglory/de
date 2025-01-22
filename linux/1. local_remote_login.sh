#CTRL+ALT+F2 launches a virtual terminal on a Linux machine
#If Linux is installed on a desktop with a graphical interface, open up a terminal emulator

#Local GUI option
#Simply use GUI to log in and log out in the end

#Local text console (no GUI)
#Server-oriented Linux OS installed
#Enter your name and password (won't be seen)
#To log out type:
exit

#Remote GUI
#Most server-running Linux OS won't have a GUI, but might be exceptions. Everyone chooses their own way:
#VNC (virtual network computing) solution. VNC client needs to be installed (e.g., VNC viewer). 
#RDP (remote desktop protocol) in case administrators let Windows users to connect. Click on "Start" and type "Remote desktop connection"

#Remote text-mode login
#Every Linux remote server uses the same tool: the open SSH daemon running on the background of the server all the time.
#Telnet was used before (highly insecure).
#Log in from the virtual machine window with SSH:
ip a #shows what IP your machine uses
#1: ...
#2: ...
    #link/ether...
    #inet 192.168.0.17 (your IP)
    #inet6 ...
#SSH client (on the current machine) tries to connect to SSH Daemon (on the server)
#MacOS & Linux-based OS (such as Ubuntu) already have an SSH client preinstalled. Open up a terminal emulator window for it
#Earlier you needed PuTTy for an SSH client on Windows. Since Windows 10 it's preinstalled too. "cmd" for Windows to open the prompt
#To connect to a remote Linux system through SSH type:
ssh alvin@192.168.0.17 #use a username you'd like to connect with (created inside a Linux OS running on the VM) and your IP
#When logged in to the Linux. Go to activities, click on a "Terminal" emulator and use the command above to connect
#When finished, to log out type:
exit