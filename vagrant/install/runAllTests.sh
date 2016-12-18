set -x
export NUMBEROFTESTS=3


#
# ADA
#
echo "ADA"
cd /vagrant_data/ada
sudo apt-get install gnat -y
gnatmake prime.adb
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file ./prime
  cat /tmp/file >> ../reports/ada.numbers.csv
done

#
# C
#
echo "C"
cd /vagrant_data/c
gcc primes.c
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file ./a.out
  cat /tmp/file >> ../reports/c.numbers.csv
done

#
# C Sharp
#
echo "C sharp"
cd /vagrant_data/csharp
sudo apt-get install mono-gmcs -y

gmcs primes.cs

for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file mono primes.exe
  cat /tmp/file >> ../reports/csharp.numbers.csv
done

#
# Fortran
#
echo "Fortran"
cd /vagrant_data/fortran
sudo apt-get install gfortran -y
gfortran -ffree-form primes.f
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file  ./a.out
  cat /tmp/file >> ../reports/fortran.numbers.csv
done

#
# Golang
#
echo "Golang"
cd /vagrant_data/golang
sudo apt-get install golang-go -y #raah, this isn't quiet!

for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file go run primes.go
  cat /tmp/file >> ../reports/golang.numbers.csv
done

#
# Java
#
echo "JAVA"

sudo apt-get install openjdk-7-jdk -y
cd /vagrant_data/Java
javac Primes.java
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file java Primes
  cat /tmp/file >> ../reports/java.numbers.csv
done

#
# Javascript
#
echo "Javascript"
sudo apt-get install nodejs -y
cd /vagrant_data/jscript
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file node primes.js
  cat /tmp/file >> ../reports/javascript.numbers.csv
done

#
# lua
#

sudo apt-get install lua5.2
cd /vagrant_data/lua
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file lua primes.lua
  cat /tmp/file >> ../reports/lua.numbers.csv
done


#
# Pascal
#
echo "Pascal"
sudo apt-get install fp-compiler -y
cd /vagrant_data/pascal
fpc primes.pas

for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file ./primes
  cat /tmp/file >> ../reports/pascal.numbers.csv
done
#
# perl
#
sudo apt-get install perl
cd /vagrant_data/perl
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file perl primes.pl
  cat /tmp/file >> ../reports/perl.numbers.csv
done


#
# PHP
#
echo "PHP"
sudo apt-get install php5-cli -y
cd /vagrant_data/php
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file php primes.php
  cat /tmp/file >> ../reports/php.numbers.csv
done

#
# Python
#
echo "Python"
#python is installed by default.
cd /vagrant_data/python
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file python primes.py
  cat /tmp/file >> ../reports/python.numbers.csv
done

#
# ruby
#
echo "Ruby"
sudo apt-get install ruby-full -y
cd /vagrant_data/ruby
for i in `seq 1 $NUMBEROFTESTS`
do
  /usr/bin/time --format "%e" -o /tmp/file ruby primes.rb
  cat /tmp/file >> ../reports/ruby.numbers.csv
done

cd /vagrant_data/reports
dos2unix *.csv
echo *.csv | tr [:blank:] ','  > final/final.csv
paste -d, *.csv >> final/final.csv
