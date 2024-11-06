{ ... }:

{
    # Bootloader.
    boot.loader = {
        systemd-boot = {
            enable = true;
            # Boot membatasi jummlah generasi sistem
            configurationLimit = 7;
        };
        efi.canTouchEfiVariables = true;
    };
}