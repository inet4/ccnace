{ buildFirefoxXpiAddon, lib, ... }:

buildFirefoxXpiAddon rec {
  pname = "ccnace";
  version = "1.0.0";
  addonId = "ccnace@inet4.github.com";
  url = "https://github.com/inet4/ccnace/releases/download/v${version}/${pname}@inet4.github.com.xpi";
  sha256 = "sha256:90229a2c10857d6ef3d1c7081c1f92193592a6461ec4cdc5cafa4e55df8fb740";
  meta = with lib; {
    homepage = "https://github.com/inet4/ccnace";
    description = "Stealthy CCNA Solver";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
