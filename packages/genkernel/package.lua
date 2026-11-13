return {
  name    = "genkernel",
  version = "2.2.2",
  summary = "Haliade system kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/genkernel/genkernel-2.2.2.tar.gz",
  sha256  = "49b3bbaf15b1bd84865c7a58d11067a7714f2f786377c3676cdbb138ace65290",
  deps    = { "bash", "curl", "make", "binutils", "gcc-minimal", "bc", "libelf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel && " .. p.install_root .. "/usr/bin/genkernel --help | grep -q 'Usage: genkernel'")
  end,
}
