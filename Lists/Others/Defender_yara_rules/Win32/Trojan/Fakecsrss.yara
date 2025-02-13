rule Trojan_Win32_Fakecsrss_C_2147740025_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fakecsrss.C"
        threat_id = "2147740025"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fakecsrss"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {83 65 e0 00 c7 45 f8 ?? ?? ?? ?? c1 eb 1a 81 6d f8 ?? ?? ?? ?? 81 45 f8 ?? ?? ?? ?? c1 e0 00 81 6d f8 ?? ?? ?? ?? 81 45 f8 ?? ?? ?? ?? c1 e8 1f 81 6d f8 ?? ?? ?? ?? c1 e0 0b 81 45 f8 ?? ?? ?? ?? b8 ?? ?? ?? ?? 81 6d f8 ?? ?? ?? ?? 35 ?? ?? ?? ?? 81 45 f8 ?? ?? ?? ?? c1 eb 02 81 45 f8 ?? ?? ?? ?? d1 e3 d1 e0 81 6d f8 ?? ?? ?? ?? 81 e3 ?? ?? ?? ?? 81 45 f8 ?? ?? ?? ?? 83 65 dc 00 eb 09}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

