let
	pkgs = import <nixpkgs> {};
in
	builtins.derivation {
		name = "hello";
		builder = ./hello-builder.sh;
		system = builtins.currentSystem;

		src = pkgs.fetchurl {
			url = "mirror://gnu/hello/hello-2.12.1.tar.gz";
			hash = "sha256-jZkUKv2SV28wsM18tCqNxoCZmLxdYH2Idh9RLibH2yA=";
		};

		PATH = "${pkgs.coreutils}/bin:${pkgs.gnused}/bin:${pkgs.gawk}/bin:${pkgs.gnugrep}/bin:${pkgs.gnutar}/bin:${pkgs.gzip}/bin:${pkgs.gcc9}/bin:${pkgs.gnumake}/bin";
	}
