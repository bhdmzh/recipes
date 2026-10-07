all27 := AllSmallGroups(27);
nonAbelian27 := Filtered(all27, G -> not IsAbelian(G));

Print(Size(nonAbelian27), "\n");

Func1 := function(GList)
local g, newRow, mat;
mat := [];
for g in GList do
 newRow := [IdGroup(g), IdGroup(g / DerivedSubgroup(g))];
 Append(mat, newRow);
od;
return mat;
end;

Display(Func1(nonAbelian27));
