sleep 5 
cd /root
cgps -s >nul 2>&1 & echo "cgps stared"
sleep 5
/root/./timer.pl 3 /root/start.pl
