# ccnace

## Installtion via Flakes

```nix
{
  ccnace = {
    url = "github:inet4/ccnace";
    inputs.nixpkgs.follows = "nixpkgs"; # optional to prevent duplicates
    inputs.firefox-extensions.follows = "firefox-extensions"; # optional to prevent duplicates
  };
}
```

## Usage

The signed firefox extension can be accessed using: 
```nix
  ccnace = ccnace.packages.${system}.default;
```

And then added as an extension.
For example: 
```nix
programs.firefox.profiles.default.extensions.packages = [ ccnace ];
```

In addition, the `re-enable-right-click` extension may be used to ensure ccnace works properly.

## Overview

Please refer to the [overview document](src/README.md).
