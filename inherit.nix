let 
  set1 = { b = 10; };
in
{
  # Inherit from let .. in construct
  inherit_letin = 
  let 
    a = 5;
  in { 
    inherit a;
    ans = a + 5;
  }.ans;

  # Inherit from other sets
  inherit_set = rec { 
    inherit (set1) b;
    ans = b + 5;
  }.ans;

}.inherit_set
