# Nix Fortress

Various security options for NixOS

Takes lots of inspiration from [nix-mineral](https://github.com/cynicsketch/nix-mineral) tries to address some convinience issues & allow for security configuration templates, as well as allow overrides to the system as a whole.

## Features (Both planned & complete)
- A flake to easily plug into your existing system (COMPLETE!)
- A cli app to manage security options on the fly
- "lockdown" systemctl targets, to harden your system as much as possible in times of need
- templates for desktops, laptops, servers, consoles, & specific use-cases