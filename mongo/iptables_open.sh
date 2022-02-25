iptables -t mangle  -I  PREROUTING -p tcp -m tcp --dport 51075 -j ACCEPT
iptables -t mangle  -I  PREROUTING -p tcp -m tcp --dport 51076 -j ACCEPT
iptables -t mangle  -I  PREROUTING -p tcp -m tcp --dport 51077 -j ACCEPT
