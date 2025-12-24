{ pkgs, lib, _config, _inputs, ... }:
let 
  zola-port = "2323";

  charm = import ./nix/charm { inherit lib; };
in
{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.zola
    pkgs.oxipng

    pkgs.zrok

    pkgs.unixtools.ifconfig

    pkgs.qrencode
  ];

  scripts = {
    run.exec = ''zola serve -p ${zola-port} --interface $(ip -4 addr show wlo1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')'';
    runo.exec = ''zola serve -p 1111 --interface $(ip -4 addr show wlo1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')'';
    runa.exec = ''zola serve -p 1968 --interface $(ip -4 addr show wlo1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')'';
    # mktun.exec = ''zrok '';
  } 
  # // charm.web.starter { port = zola-port; }
  // (charm.web.zolaScriptsBuilder { port = zola-port; inherit pkgs;} "cs7q3f1bero2")
  ;
}
