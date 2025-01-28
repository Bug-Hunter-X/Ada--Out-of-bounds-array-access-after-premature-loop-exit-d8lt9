```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         exit;
      end if;
   end loop;
   -- Accessing My_Arr(I) here after exiting the loop might cause issues if I is not within the range 1..10 after the loop exits.
   Put_Line(Integer'Image(My_Arr(I)));
Exception
   when others =>
      Put_Line("An error occurred.");
End Example;
```