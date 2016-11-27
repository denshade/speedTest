set -x
export NUMBEROFTESTS=3

#
# C
#

cd /vagrant_data/c
gcc primes.c
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file ./a.out
  cat /tmp/file >> ../reports/c.numbers.csv
done

#
# Java
#
sudo apt-get install openjdk-7-jdk -y
cd /vagrant_data/Java
javac Primes.java
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file java Primes
  cat /tmp/file >> ../reports/java.numbers.csv
done

#
# Fortran
#

cd /vagrant_data/fortran
sudo apt-get install gfortran -y
gfortran -ffree-form primes.f
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file  ./a.out
  cat /tmp/file >> ../reports/fortran.numbers.csv
done
