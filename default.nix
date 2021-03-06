{ mkDerivation, alex, array, base, binary, code-page, containers
, deepseq, Earley, http-client, http-client-tls, microlens
, microlens-mtl, mtl, optparse-applicative, pipes, QuickCheck
, stdenv, system-fileio, system-filepath, tasty, tasty-hunit
, tasty-quickcheck, text, text-format, transformers
}:
mkDerivation {
  pname = "morte";
  version = "1.6.13";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    array base binary containers deepseq Earley http-client
    http-client-tls microlens microlens-mtl pipes system-fileio
    system-filepath text text-format transformers
  ];
  libraryToolDepends = [ alex ];
  executableHaskellDepends = [
    base code-page optparse-applicative text text-format
  ];
  testHaskellDepends = [
    base mtl QuickCheck system-filepath tasty tasty-hunit
    tasty-quickcheck text transformers
  ];
  description = "A bare-bones calculus of constructions";
  license = stdenv.lib.licenses.bsd3;
}
