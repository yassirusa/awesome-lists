rule VirTool_Win32_Nodefiloadesz_A_2147912622_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/Nodefiloadesz.A!MTB"
        threat_id = "2147912622"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Nodefiloadesz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 85 c8 fe ff ff ?? ?? ?? ?? ?? ?? 51 ?? ?? ?? ?? ?? ?? 89 85 e8 fe ff ff 51 6a 00 68 3f 00 0f 00 6a 00 6a 00 6a 00 ?? ?? ?? ?? ?? 50 c7 85 c8 fe ff ff 00 00 00 00 c7 85 e4 fe ff ff 00 00 00 00 ?? ?? 85 c0}  //weight: 1, accuracy: Low
        $x_1_2 = {c7 85 e8 fe ff ff ?? ?? ?? ?? 0f 57 c0 ?? ?? ?? ?? ?? ?? 50 66 0f d6 85 e0 fe ff ff ?? ?? ?? ?? ?? 57 6a 28 [0-17] c6 45 fc 04 [0-17] 83 c4 0c 8b ce 50 83 ec 08 8b c4 83 ec 08}  //weight: 1, accuracy: Low
        $x_1_3 = {c6 45 fc 0d ?? ?? ?? ?? ?? ?? ?? ?? 80 7d e8 01 [0-17] b9 ?? ?? ?? ?? ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? ?? 8b 75 e4 83 c4 04 0f 57 c0 c7 45 c0 ?? ?? ?? ?? 66 0f d6 45 b8 68 ?? ?? ?? ?? ?? ?? ?? ?? ?? 56}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

