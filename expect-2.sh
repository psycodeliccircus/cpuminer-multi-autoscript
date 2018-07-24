spawn minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u renildomrc@gmail.com -p x
expect -re "#"
send -- "0\r"
set timeout 60
expect eof
