{ pkgs, _lib, _config, _inputs, ... }:
let 
  zola-port = "2323";
in
{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.zola
    pkgs.oxipng
  ];

  scripts = {
    run.exec = "zola serve -p ${zola-port}";
  };
}
