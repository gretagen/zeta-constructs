return {
  name    = "colord-gtk",
  version = "0.3.1",
  summary = "GTK widgets and helpers for colord",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/colord-gtk/colord-gtk-0.3.1.tar.gz",
  sha256  = "21de1e974d5d92458642117b260be54911ef367e7af5f0d1ff829829ec6130aa",
  deps    = { "glibc", "glib", "gtk3", "colord", "lcms2", "gobject-introspection", "gtk4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libcolord-gtk.so* | grep -q . && ls " .. p.install_root .. "/usr/lib/pkgconfig/colord-gtk*.pc | grep -q .")
  end,
}
