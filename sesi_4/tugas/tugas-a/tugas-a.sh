directory="/home/aris/dev-aris/bootcamp-dev-ops/sesi_4/var/log"
echo $directory

awk -v name="ERROR" '$3 == name {count++} END {print "total ERROR muncul : ", count, "kali"}' /home/aris/dev-aris/bootcamp-dev-ops/sesi_4/var/log/webserver.log
awk -v name="401" '$4 == name {count++} END {print "total HTTP ERROR",name,"muncul: ", count, "kali"}' /home/aris/dev-aris/bootcamp-dev-ops/sesi_4/var/log/webserver.log
awk -v name="502" '$4 == name {count++} END {print "total HTTP ERROR",name,"muncul: ", count, "kali"}' /home/aris/dev-aris/bootcamp-dev-ops/sesi_4/var/log/webserver.log
