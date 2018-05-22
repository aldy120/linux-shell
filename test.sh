#! /bin/bash
function show_name() {
  echo "今天是 $1 ，您是 $2 大大，來自 $3"
}

name="$1"
ip="127.0.0.1"
today=$(date +%F)

if [ $# != 1 ]; then
  echo "Usage: ./$0 [使用者名稱]"
  exit
fi

show_name "$today" "$name" "$ip"

sleep 2

echo
echo "Bye-Bye ;-)"