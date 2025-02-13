rule VirTool_Win64_Herevelesz_A_2147922943_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Herevelesz.A!MTB"
        threat_id = "2147922943"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Herevelesz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 80 fd 01 ?? ?? ?? ?? ?? ?? ?? ?? ?? ba 65 00 00 00 33 c9 ?? ?? ?? ?? ?? ?? 48 8b d0 33 c9 48 8b d8 ?? ?? ?? ?? ?? ?? 48 8b d3 33 c9 8b f8 ?? ?? ?? ?? ?? ?? 41 b9 40 00 00 00 41 b8 00 10 00 00 8b d7 33 c9 4c 8b f0 8b df ?? ?? ?? ?? ?? ?? 85 ff}  //weight: 1, accuracy: Low
        $x_1_2 = {41 80 fd 02 ?? ?? ?? ?? ?? ?? 48 8b cb [0-17] 33 c9 ?? ?? ?? ?? ?? ?? 48 8b c8 ba 08 00 00 00 4c 8b f8 ?? ?? ?? ?? ?? ?? ba 0a 00 00 00 49 8b cf 8b f8 ?? ?? ?? ?? ?? ?? 8b d7 49 8b cf 44 8b c0 8b d8 ?? ?? ?? ?? ?? ?? 49 8b cf 4c 8b f0}  //weight: 1, accuracy: Low
        $x_1_3 = {8b cf 45 33 c0 ?? ?? ?? ?? ?? ?? 48 8b d8 48 83 f8 ff [0-19] b9 d2 04 00 00 66 89 7d a0 [0-16] 8b cf ?? ?? ?? ?? ?? ?? ?? 66 89 45 a2 ?? ?? ?? ?? ?? ?? 48 8b cb 85 c0 [0-25] 41 b8 10 00 00 00}  //weight: 1, accuracy: Low
        $x_1_4 = {4c 89 7c 24 68 89 44 24 54 [0-16] 66 0f 6e c0 f3 0f e6 c0 f2 0f 5e c7 f2 0f 59 c6 f2 0f 58 c0 f2 0f 5c c6 f2 41 0f 58 c0 f2 41 0f 59 c1 f2 48 0f 2c c8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

