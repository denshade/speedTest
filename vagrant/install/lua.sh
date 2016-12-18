NUMBEROFTESTS=3
sudo apt-get install lua5.2
cd /vagrant_data/lua
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file lua primes.lua
  cat /tmp/file >> ../reports/lua.numbers.csv
done
