<?php

$myNumber = 104729;
for ($k = 104729; $k < 104729 + 10000; $k++)
{
   if (isPrime($k))
   {
       echo 'X';
   }
   else
   {
       echo 'O';
   }
}

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



