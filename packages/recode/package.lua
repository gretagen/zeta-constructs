return {
  name    = "recode",
  version = "3.7.17",
  summary = "Charset conversion library and tool (GNU recode)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/recode/recode-3.7.17.tar.gz",
  sha256  = "8f2651d2a5db61a23cc3586efe698ec67b7e89e559b6844aa03baa22d7f7f92b",
  deps    = { "glibc", "libunistring" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/librecode.so && test -f " .. p.install_root .. "/usr/include/recode.h && test -f " .. p.install_root .. "/usr/share/man/man1/recode.1 && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/recode --version 2>&1 | grep -q 3.7.17")
  end,
}
