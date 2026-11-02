return {
  name    = "gnome-bluetooth",
  version = "47.2",
  summary = "GNOME Bluetooth management (libgnome-bluetooth + app)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-bluetooth/gnome-bluetooth-47.2.tar.gz",
  sha256  = "cf499428b666e5fe444072b4bfa1a20cb4d80b3fa9f6c179f893c3d50264e2c2",
  deps    = { "glibc", "glib", "gtk4", "gnome-desktop", "gobject-introspection", "libnotify", "networkmanager", "libadwaita", "gsound", "upower" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bluetooth-sendto && ls " .. p.install_root .. "/usr/lib/pkgconfig/gnome-bluetooth-3.0.pc | grep -q .")
  end,
}
