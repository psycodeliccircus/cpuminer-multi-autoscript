sudo apt-get -y update
sudo apt-get -y groupinstall "Development Tools"
sudo apt-get -y install git libcurl-devel python-devel screen rsync epel-release tmux nano expect
git clone https://github.com/borzz/cpuminer-multi
cd cpuminer-multi/
./autogen.sh && CFLAGS="-march=native" 
./configure
make
sudo make install
mv ~/cpuminer-multi-autoscript/expect-2.sh ~/cpuminer-multi-autoscript/cpuminer-multi
expect ./expect2.sh
tmux
minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u renildomrc@gmail.com -p x

