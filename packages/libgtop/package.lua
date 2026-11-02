return {
  name    = "libgtop",
  version = "2.41.3",
  summary = "System monitoring library (libgtop-2.0)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgtop/libgtop-2.41.3.tar.gz",
  sha256  = "7daa1e4fe27703159f77dc349af8c501643de3f574a601ba9608c48489e20ca2",
  deps    = { "glibc", "glib", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgtop-2.0.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libgtop-2.0")
  end,
}
