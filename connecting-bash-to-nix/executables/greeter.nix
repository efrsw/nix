let
	pkgs = import <nixpkgs> {};
in
builtins.derivation rec {
	name = "greeter";
	system = builtins.currentSystem;
	builder = ./greeter-script.sh;
	
	inherit (pkgs) coreutils;
	PATH = "${coreutils}/bin";
	message = "This is World!";
}
