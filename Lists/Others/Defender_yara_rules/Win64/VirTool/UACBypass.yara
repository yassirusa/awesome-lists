rule VirTool_Win64_UACBypass_B_2147923510_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/UACBypass.B"
        threat_id = "2147923510"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "UACBypass"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 81 ec 70 04 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 89 c1 e8 ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 89 c1 48 8b 05 d3 dc 00 00 ff ?? 48 89 c1 ?? ?? ?? ?? ?? ?? ?? 48 89 c2 48 8b 05 c5 dc 00 00 ff ?? 48 89 85 e0 03 00 00 48 83 bd e0 03 00 00 00 ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 89 c1 e8 ?? ?? ?? ?? b8 01 00 00 00}  //weight: 1, accuracy: Low
        $x_1_2 = {ba 30 00 00 00 48 89 c1 e8 ?? ?? ?? ?? c7 45 a0 30 00 00 00 c7 45 b4 04 00 00 00 ?? ?? ?? ?? 48 ?? ?? ?? 48 ?? ?? ?? 49 89 c9 49 89 d0 48 89 c2 ?? ?? ?? ?? ?? ?? ?? 48 89 c1 48 8b ?? ?? ?? ?? ?? ff ?? 89 45 fc 83 7d fc 00}  //weight: 1, accuracy: Low
        $x_1_3 = {55 48 89 e5 48 83 ec 10 c7 45 fc 60 00 00 00 8b 45 fc 65 ?? ?? ?? 48 89 45 f0 48 8b 45 f0 48 83 c4 10 5d c3}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

