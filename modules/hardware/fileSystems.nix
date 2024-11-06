{ ... }:

{
    fileSystems."/" =
        { device = "/dev/disk/by-uuid/eaa2613c-58f1-4034-93bf-04c9fb3c511e";
        fsType = "ext4";
        };

    fileSystems."/boot" =
        { device = "/dev/disk/by-uuid/0BC7-BCA8";
        fsType = "vfat";
        options = [ "fmask=0077" "dmask=0077" ];
        };

    fileSystems."/home" =
        { device = "/dev/disk/by-uuid/73d098b9-b009-43c4-8533-dac0d81f2d0e";
        fsType = "ext4";
        };
}