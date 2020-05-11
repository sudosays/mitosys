sudo dhcpcd $(ip -o link | awk -F': ' '{print $2}' | tail -n1)
