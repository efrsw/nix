#import ./import.nix { a=1; b=2; c=3; } 
#{ a=1; b=2; } // { c=3; }
#with builtins; head [ 1 2 3 ]
