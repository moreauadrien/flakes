{
  description = "A Collection of Personal Nix Flake Templates";

  outputs = { self, ... }: {
    templates = {
      trivial = {
        path = ./templates/trivial;
        description = "Trivial template";
      };

      go = {
        path = ./templates/go;
        description = "Go dev environment";
      };

      defaultTemplate = self.templates.trivial;
    };
  };
}
