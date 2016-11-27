with Ada.Text_IO; use Ada.Text_IO;
procedure Prime is

 function isPrime (k: in Standard.Integer) return Boolean is
    begin
        for l in 2..k - 1 loop
            if k mod l = 0 then
                return False;
            end if;

        end loop;
      return True;
    end isPrime;

counter : Integer := 0;
begin

    for k in 2 .. 100000 loop
        if isPrime(k) then
            counter := counter + 1;
        end if;

    end loop;
    Ada.Text_IO.Put("primes counted ");
    Ada.Text_IO.Put(Integer'Image(counter));

end Prime;
