program Primes;
var
k : LongInt;

function isPrime(current : LongInt) : boolean;
var
l : LongInt;
begin
  isPrime := false;
  for l := 2 to current - 1 do
  begin
        if ( current mod l = 0 ) then
                isPrime := true;
                break;
  end;
  isPrime := true;

end;

BEGIN
    writeln('Hello World');
    for k := 2 to 2000000 do
    begin
        if isPrime(k) then
                writeln('O')
        else
                writeln('X')
    end;
    readln;



END.
