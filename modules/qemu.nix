{ pkgs, config, ... }:
{
  programs.virt-manager.enable = true;

  environment.systemPackages = [ pkgs.qemu ];

  users.groups.libvirtd.members = [ "kerem" ];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;

  users.users.kerem.extraGroups = [ "libvirtd" ];

  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;

  boot.kernelModules = [ "vfio-pci" ];
}
