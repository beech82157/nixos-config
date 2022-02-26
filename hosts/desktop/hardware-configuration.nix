# Home Desktop - Currently in VM
#
#  flake.nix
#   └─ ./hosts
#       └─ ./laptop
#           └─ hardware-configuration.nix *
#
# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.

{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usbhid" "uas" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/9b1a6001-ca84-4157-91e9-df0493c186ab";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/141A-4E53";
      fsType = "vfat";
    };

  fileSystems."/ssd" =
    { device = "/dev/disk/by-uuid/26F0CCFDF0CCD3E9";
      fsType = "ntfs";
    };

  fileSystems."/media" =
    { device = "/dev/disk/by-uuid/36E6613DE660FE8D";
      fsType = "ntfs";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/68a87195-bb0e-478d-8a94-4db4b7ae0bb3"; }
    ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
