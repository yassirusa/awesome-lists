rule Trojan_Win32_CryptExt_A_2147740085_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/CryptExt.A!MTB"
        threat_id = "2147740085"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "CryptExt"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {ba 01 00 00 00 c1 e2 02 c6 82 ?? ?? ?? ?? 65 b8 01 00 00 00 6b c8 0a c6 81 ?? ?? ?? ?? 6c ba 01 00 00 00 c1 e2 03 c6 82 ?? ?? ?? ?? 2e b8 01 00 00 00 6b c8 03 c6 81 ?? ?? ?? ?? 6e ba 01 00 00 00 6b c2 06 c6 80 ?? ?? ?? ?? 33 b9 01 00 00 00 c1 e1 00 c6 81 ?? ?? ?? ?? 65 ba 01 00 00 00 6b c2 05 c6 80 ?? ?? ?? ?? 6c b9 01 00 00 00 6b d1 09 c6 82 ?? ?? ?? ?? 64 b8 01 00 00 00 6b c8 0b c6 81 ?? ?? ?? ?? 6c ba 01 00 00 00 6b c2 07 c6 80 ?? ?? ?? ?? 32 b9 01 00 00 00 d1 e1 c6 81 ?? ?? ?? ?? 72 ba 01 00 00 00 6b c2 00 c6 80 ?? ?? ?? ?? 6b}  //weight: 1, accuracy: Low
        $x_1_2 = {33 b9 01 00 00 00 d1 e1 c6 81 ?? ?? ?? ?? 64 ba 01 00 00 00 6b c2 03 c6 80 ?? ?? ?? ?? 75 b9 01 00 00 00 6b d1 07 c6 82 ?? ?? ?? ?? 32 b8 01 00 00 00 6b c8 0a c6 81 ?? ?? ?? ?? 72 ba 01 00 00 00 6b c2 0d c6 80 ?? ?? ?? ?? 57 b9 01 00 00 00 c1 e1 02 c6 81 ?? ?? ?? ?? 6c ba 01 00 00 00 c1 e2 03 c6 82 ?? ?? ?? ?? 46 b8 01 00 00 00 6b c8 00 c6 81 ?? ?? ?? ?? 4d ba 01 00 00 00 6b c2 0b c6 80 ?? ?? ?? ?? 73 b9 01 00 00 00 6b d1 0c c6 82 ?? ?? ?? ?? 74 b8 01 00 00 00 6b c8 05 c6 81 ?? ?? ?? ?? 65 ba 01 00 00 00 c1 e2 00 c6 82 ?? ?? ?? ?? 6f b8 01 00 00 00 6b c8 09 c6 81 ?? ?? ?? ?? 69}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

