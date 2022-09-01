#/bin/bash 
# capture server packet use tcpdump to wireshark
# csrv root@10.10.22.60 ens3

useage() {
    echo 'useage: csrv root@10.10.22.60 ens3'
}
if [ "x$1" == "x" ] || [ "x$2" == "x" ]; then
    useage
    exit
fi

ssh $1 "tcpdump -i $2 -s 0 -l -w -" | wireshark -k -i -











