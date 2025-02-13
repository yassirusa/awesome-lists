rule Trojan_Win32_NsCoinminer_2147728305_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/NsCoinminer"
        threat_id = "2147728305"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "NsCoinminer"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {b9 00 01 00 00 e8 [0-37] c6 85 ?? ?? ff ff 0b c6 85 ?? ?? ff ff 64 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 61 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 74 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 61 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 2e c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 62 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 69 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 6e c6 85 ?? ?? ff ff 02 8d 95 ?? ?? ff ff}  //weight: 1, accuracy: Low
        $x_1_2 = {b9 00 01 00 00 e8 [0-37] c6 85 ?? ?? ff ff 0b c6 45 ?? 64 c6 45 ?? 02 c6 45 ?? 61 c6 45 ?? 02 c6 45 ?? 74 c6 45 ?? 02 c6 45 ?? 61 c6 45 ?? 02 c6 45 ?? 2e c6 45 ?? 02 c6 45 ?? 62 c6 45 ?? 02 c6 45 ?? 69 c6 45 ?? 02 c6 45 ?? 6e c6 45 ?? 02 8d 95 ?? ?? ff ff}  //weight: 1, accuracy: Low
        $x_1_3 = {ff ff 50 c6 85 ?? ?? ff ff 44 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 6c c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 6c c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 4d c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 61 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 69 c6 85 ?? ?? ff ff 02 c6 85 ?? ?? ff ff 6e c6 85 ?? ?? ff ff 02 8d 95 ?? ?? ff ff}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

