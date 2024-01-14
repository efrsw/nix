with import <nixpkgs> {}; 

buildDotnetModule rec {
	pname = "Hello";
	version = "0.1";
	src = ./Hello;
	nugetDeps = ./deps.nix;
	dotnet-sdk = dotnetCorePackages.sdk_8_0;
	dotnet-runtime = dotnetCorePackages.runtime_8_0;
}
