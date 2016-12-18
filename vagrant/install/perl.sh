NUMBEROFTESTS=3
sudo apt-get install perl
cd /vagrant_data/perl
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file perl primes.pl
  cat /tmp/file >> ../reports/perl.numbers.csv
done
