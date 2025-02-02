```ada
function Add_Vectors(A, B : Vector) return Vector is
   C : Vector(A'Range);
begin
   if A'Length /= B'Length then
      raise Constraint_Error with "Vectors must have the same length";
   end if;
   for I in A'Range loop
      C(I) := A(I) + B(I);
   end loop;
   return C;
end Add_Vectors;

procedure Example is
   Vec1 : Vector := (1.0, 2.0, 3.0);
   Vec2 : Vector := (4.0, 5.0, 6.0);
   Vec3 : Vector;
begin
   Vec3 := Add_Vectors(Vec1, Vec2);
   Put_Line("Result: (" & Float'Image(Vec3(1)) & ", " & Float'Image(Vec3(2)) & ", " & Float'Image(Vec3(3)) & ")");
   
   -- Example of error handling
   begin
      Vec3 := Add_Vectors(Vec1, (1.0,2.0));
   exception
      when Constraint_Error =>
         Put_Line("Error: Vectors must have the same length");
   end;
   
end Example;

type Vector is array (1..3) of Float;
```