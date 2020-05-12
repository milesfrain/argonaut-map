{ name = "my-project"
, dependencies =
  [ "argonaut", "console", "effect", "ordered-collections", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
