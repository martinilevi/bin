if [ "$1x" = "x" ] || [ "$2x" = "x" ] || [ "$3x" = "x" ];
then
	echo "tunnelto.sh [host] [host port] [xydesk port]"
	echo "example ./tunnelto.sh www.hola.com 80 8080" 
	exit 1
else
	echo "tunnel to host $1 port $2 using port $3"
fi

FIFONAME=$1.$2.$3.fifo

echo "sudo rm -f $FIFONAME;mkfifo $FIFONAME;while [ True ];do /bin/nc.traditional -l -p -q1 $3 < $FIFONAME 2>/dev/null | /bin/nc.traditional -q1 $1 $2 > $FIFONAME; done;">/tmp/$1.$2.$3.sh

scp /tmp/$1.$2.$3.sh martin@xydesk:/tmp

ssh martin@xydesk chmod +x /tmp/$1.$2.$3.sh

ssh martin@xydesk nohup /tmp/$1.$2.$3.sh &

echo done.
