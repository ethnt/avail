{ lib }: {
  importModules = attrset:
    builtins.mapAttrs (_: value: (import value)) (lib.tree.flattenTree attrset);
}
