+++
title = "Típusrendszer a nix ökoszisztémához"
description = "Óriási az igény, még sincs még ilyen projekt."

weight = 3
+++

- a _nix_ egy olyan **funkcionális nyelv, amely NEM ismeri a függvény szignatúra fogalmát**. 
- nix felhasználóként láttam, hogy rengeteg ember fejleszt az ökoszisztémában, amely a nyelvre alapszik

| # | Mennyi? | Mit jelent?
---|---|---
core nixpkgs collection | 120,000+ Packages | hivatalos github repository, illetve függvénykönyvtár, amelyre a nixos alapszik.
number of flake projects | ~139k[^1] | minden remote repo egy csomagnak minősül, ha tartalmaz egy flake.nix-et. 

[^1]: [Github, flake.nix-et tartalmazó repók száma](https://github.com/search?q=path%3Aflake.nix&type=code) - (köszönet `michaili`-nak a [discord közösségből](https://discord.gg/QHspnYD5))