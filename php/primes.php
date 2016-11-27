<?php

$cnt = 0;
for ($k = 2; $k < 100000; $k++)
{
   if (isPrime($k))
   {
       $cnt++;
   }
}
echo "Found $cnt primes";

function isPrime($number)
{
   for ($i = 2; $i < $number; $i++ )
   {
       if ($number % $i == 0)
       {
           return false;
       }
   }
   return true;
}
