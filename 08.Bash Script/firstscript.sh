  1 #!/bin/bash
  2
  3 ### This script prints system info ###
  4 echo "Welcome to bash script."
  5 echo
  6 #checking system uptime
  7 echo "######################################"
  8 echo "The uptime of the system is: "
  9 uptime
 10 echo
 11
 12 echo "######################################"
 13 echo "Memory Utilization"
 14 free -m
 15 echo
 16
 17 echo "######################################"
 18 echo "Disk Utilization"
 19 df -h
