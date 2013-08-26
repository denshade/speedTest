with Ada.Text_IO; use Ada.Text_IO;
procedure Prime is

 function isPrime (k: in Standard.Integer) return Boolean is
    begin
        for l in 2..k - 1 loop
            if k mod l = 0 then
                return True;
            end if;
                
        end loop;
      return False;
    end isPrime;


begin

    for k in 2 .. 2000000 loop
        if isPrime(k) then 
            Ada.Text_IO.Put("X");
        else 
            Ada.Text_IO.Put("O");
        end if;
    
    end loop;
end Prime;
