program Primes;
var
k : LongInt;

function isPrime(current : LongInt) : boolean;
var
l : LongInt;
modulus : LongInt;
begin
  isPrime := true;
  for l := 2 to current - 1 do
  begin
        modulus := current mod l;
        if modulus = 0 then
          begin
                isPrime := false;break
          end
  end;
end;
var
counter : LongInt;
BEGIN
    counter := 0;
    for k := 2 to 100000 do
    begin
        if isPrime(k) then
                counter := counter + 1;
    end;
    writeln('primes');
    writeln(counter)



END.
