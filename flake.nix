{
  description = "avail";

  inputs = { haumea.url = "github:nix-community/haumea/v0.2.2"; };

  outputs = { self, haumea }: rec {
    lib = haumea.lib.load {
      src = ./lib;
      inputs = { inherit lib; };
    };
  };
}
