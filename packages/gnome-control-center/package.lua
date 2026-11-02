return {
  name    = "gnome-control-center",
  version = "51.1",
  summary = "GNOME Settings (control center)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-control-center/gnome-control-center-51.1.tar.gz",
  sha256  = "6bf5a1232b25ed773b85ccee54f6b018474249f07c708ea7dd31a64e7402bfd7",
  deps    = { "glibc", "glib", "gtk4", "gtk3", "libadwaita", "gnome-desktop", "gnome-settings-daemon", "accountsservice", "colord-gtk", "colord", "libcups", "gnome-bluetooth", "gnome-online-accounts", "gsound", "libgtop", "libnma", "libpwquality", "krb5", "ModemManager", "udisks2", "shared-mime-info", "tecla", "blueprint-compiler", "ibus", "gobject-introspection", "upower", "gsettings-desktop-schemas", "libwacom", "libsecret", "polkit", "gcr-4", "networkmanager" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-control-center && test -x " .. p.install_root .. "/usr/libexec/gnome-control-center-search-provider && " .. p.install_root .. "/usr/bin/gnome-control-center --version | grep -q 51")
  end,
}
