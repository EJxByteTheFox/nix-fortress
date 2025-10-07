# Kernel configuration defaults (Straight out of nix-mineral for now.)

{ config, lib, pkgs }:

let

in
{
  boot.kernel = {
    sysctl = {
      "kernel.yama.ptrace-scope" = lib.mkDefault "1";

      "kernel.sysrq" = lib.mkDefault "0";

      "fs.binfmt_misc.status" = lib.mkDefault "0";

      "kernel.io_uring_disabled" = lib.mkDefault "2";

      "net.ipv4.ip_foward" = lib.mkDefault "0";
      "net.ipv4.conf.all.forwarding" = lib.mkOverride 900 "0";
      "net.ipv4.conf.default.forwarding" = lib.mkDefault "0";
      "net.ipv6.conf.all.forwarding" = lib.mkDefault "0";
      "net.ipv6.conf.default.forwarding" = lib.mkDefault "0";

      "net.ipv4.tcp_timestamps" = lib.mkDefault "1";

      "dev.tty.ldisc_autoload" = lib.mkDefault "0";
      "fs.protected_fifos" = lib.mkDefault "2";
      "fs.protected_hardlinks" = lib.mkDefault "1";
      "fs.protected_regular" = lib.mkDefault "2";
      "fs.protected_symlinks" = lib.mkDefault "1";
      "fs.suid_dumpable" = lib.mkDefault "0";

      "kernel.dmesg_restrict" = lib.mkDefault "1";
      "kernel.kexec_load_disabled" = lib.mkOverride 900 "1";
      "kernel.kptr_restrict" = lib.mkOverride 900 "2";
      "kernel.perf_event_paranoid" = lib.mkDefault "3";
      "kernel.printk" = lib.mkOverride 900 "3 3 3 3";
      "kernel.unpriveleged_bpf_disabled" = lib.mkDefault "1";
      "net.core.bpf_jit_harden" = lib.mkDefault "2";

      # Diable ICMP redirection
      "net.ipv4.conf.all.accept_redirects" = lib.mkOverride 900 "0";
      "net.ipv4.conf.default.accept_redirects" = lib.mkOverride 900 "0";
      "net.ipv4.conf.all.send_redirects" = lib.mkOverride 900 "0";      
      "net.ipv4.conf.default.send_redirects" = lib.mkOverride 900 "0";
      "net.ipv6.conf.all.accept_redirects" = lib.mkOverride 900 "0";
      "net.ipv6.conf.default.accept_redirects" = lib.mkOverride 900 "0";
    
      # Use SICMP
      "net.ipv4.conf.all.secure_redirects" = lib.mkOverride 900 "1";
      "net.ipv4.conf.default.secure_redirects" = lib.mkOverride 900 "1";      
    
      "net.ipv4.conf.all.accept_source_route" = lib.mkDefault "0";
      "net.ipv4.conf.all.rp_filter" = lib.mkOverride 900 "1";
      "net.ipv4.conf.default.accept_source_route" = lib.mkDefault "0";
      "net.ipv4.conf.default.rp_filter" = lib.mkOverride 900 "1";
      "net.ipv4.icmp_echo_ignore_all" = lib.mkDefault "1";     
    };
  };
}