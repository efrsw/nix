builtins.derivation {
	name = "echoer";
	builder = ./echoer.sh;
	system = builtins.currentSystem;
	
	message = "Hello, World!";
}
