# This file has been generated by node2nix 1.8.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "commander-7.0.0" = {
      name = "commander";
      packageName = "commander";
      version = "7.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-7.0.0.tgz";
        sha512 = "ovx/7NkTrnPuIV8sqk/GjUIIM1+iUQeqA3ye2VNpq9sVoiZsooObWlQy+OPWGI17GDaEoybuAGJm6U8yC077BA==";
      };
    };
    "iconv-2.2.3" = {
      name = "iconv";
      packageName = "iconv";
      version = "2.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/iconv/-/iconv-2.2.3.tgz";
        sha1 = "e084d60eeb7d73da7f0a9c096e4c8abe090bfaed";
      };
    };
    "irc-0.5.2" = {
      name = "irc";
      packageName = "irc";
      version = "0.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/irc/-/irc-0.5.2.tgz";
        sha1 = "3714f4768365a96d0b2f776bc91166beb2464bbc";
      };
    };
    "irc-colors-1.5.0" = {
      name = "irc-colors";
      packageName = "irc-colors";
      version = "1.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/irc-colors/-/irc-colors-1.5.0.tgz";
        sha512 = "HtszKchBQTcqw1DC09uD7i7vvMayHGM1OCo6AHt5pkgZEyo99ClhHTMJdf+Ezc9ovuNNxcH89QfyclGthjZJOw==";
      };
    };
    "nan-2.14.2" = {
      name = "nan";
      packageName = "nan";
      version = "2.14.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/nan/-/nan-2.14.2.tgz";
        sha512 = "M2ufzIiINKCuDfBSAUr1vWQ+vuVcA9kqx8JJUsbQi6yf1uGRyb7HfpdfUr5qLXf3B/t8dPvcjhKMmlfnP47EzQ==";
      };
    };
    "node-icu-charset-detector-0.2.0" = {
      name = "node-icu-charset-detector";
      packageName = "node-icu-charset-detector";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-icu-charset-detector/-/node-icu-charset-detector-0.2.0.tgz";
        sha1 = "c2320da374ddcb671fc54cb4a0e041e156ffd639";
      };
    };
  };
  args = {
    name = "kallistarvin";
    packageName = "kallistarvin";
    version = "1.0.0";
    src = ./.;
    dependencies = [
      sources."commander-7.0.0"
      sources."iconv-2.2.3"
      sources."irc-0.5.2"
      sources."irc-colors-1.5.0"
      sources."nan-2.14.2"
      sources."node-icu-charset-detector-0.2.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "discordant gaming bot";
      homepage = "https://github.com/danwdart/kallistarvin#readme";
      license = "AGPL-3.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}