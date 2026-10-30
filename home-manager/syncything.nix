{
  services.syncthing = {
    enable = true;
    settings = {
      devices = {
        "minakami" = { id = "UUGFBW4-CPMJP34-AXV42HL-32A4J4V-GWFHAZZ-ZPGAIAQ-5PISOIF-SIA43AV"; };
        "kurisu" = { id = "VD3ZZXT-ZWAYXDJ-PMGE4T5-ITTM5FV-QNUM3TZ-2BNX72P-JPZGQIV-KPZ2WQS"; };
        "girl-in-shell" = { id = "73STM7S-CZTUNBB-CDUNB7D-A2VR7OE-5Z47KEF-FVVEOBT-32WYLHJ-SMHVLQN"; };
      
      };
      folders = {
        "music" = {
          path = "/home/ets-c837622227/Music";
          devices = ["minakami" "kurisu" "girl-in-shell"];
          id = "pmmqc-swphr";
        };
        "share" = {
          path = "/home/ets-c837622227/share";
          devices = ["minakami" "kurisu" "girl-in-shell"];
          id = "mhseg-kcfz5";
        };
      };
    };




  };
}
