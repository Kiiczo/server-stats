top -bn1 | grep "%Cpu(s):" | cut -d ',' -f 4 | awk '{print "CPU Usage: " 100-$1 "%"}'
free | grep "Mem:" -w | awk '{printf "RAM Usage: \n Total: %.1fGB\n Used: %.1fGB (%.2f%%)\n Free: %.1fGB (%.2f%%) \n",$2/1024^2, $3/1024^2, $3/$2 * 100, $7/1024^2, $7/$2 * 100}'

