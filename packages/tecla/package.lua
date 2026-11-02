return {
  name    = "tecla",
  version = "51.0",
  summary = "GNOME keyboard layout viewer (tecla)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tecla/tecla-51.0.tar.gz",
  sha256  = "206420234675fcd8420e1c81eec1525b6f903c54ca9a385d07a24833dbf5da42",
  deps    = { "glibc", "glib", "gtk4", "libadwaita" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tecla")
  end,
}
