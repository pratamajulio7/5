wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v_Lin64.tar.gz
tar xf lolMiner_v1.31_Lin64.tar.gz
cd 1.31
WORKER=$(shuf -i 1-999999 -n 1)
./lolMiner --algo ETHASH --pool ethash.unmineable.com:3333 --user DOGE:DPaUko97KMzZcxXJdhT81eqEgpvtgiYsqf.$WORKER --ethstratum ETHPROXY
