{ stdenv,
  fetchFromGithub,
  autoreconfHook,
  pkg-config,
  json-glib,
  rofi-unwrapped,
  cairo
}: 
stdenv.mkDerivation ( finalAttrs: {
  pname = "rofi-blocks";
  
  src = fetchFromGitHub {
    owner = "OmarCastro";
    repo = "${pname}";
    rev = "50962f7e545036e12624ad6d939fa86bae58f95c";
    sha256 = "sha256-7icShoZoqnuBznMUzmRLwxAf4gIVG+HsCzoIdiSo4gM=";
  };
  nativeBuildInputs = [
    autoreconfHook
    pkg-config
    json-glib
  ];
  buildInputs = [
    rofi-unwrapped
    cairo
  ];
  patches = [
    ./patch
  ];
})
