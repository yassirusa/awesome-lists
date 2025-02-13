rule VirTool_Win32_Browsersnatch_B_2147924688_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/Browsersnatch.B"
        threat_id = "2147924688"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Browsersnatch"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {6a 00 6a 00 52 51 6a 01 ?? ?? ?? 0f 47 45 08 6a 00 50 ff ?? ?? ?? ?? ?? 85 c0 ?? ?? ba b8 ?? ?? ?? ?? ?? 6a 08 e8}  //weight: 1, accuracy: Low
        $x_1_2 = {8b f9 8b 45 08 83 f8 05 ?? ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? ba a0 ?? ?? ?? e8 ?? ?? ?? ?? 68 ?? ?? ?? ?? 8b c8 ff ?? ?? ?? ?? ?? 83 ec 18 ?? ?? ?? 8b cc 89 65 08 56 e8}  //weight: 1, accuracy: Low
        $x_1_3 = {83 ec 18 c7 45 fc 00 00 00 00 8b cc 57 e8 ?? ?? ?? ?? c7 45 fc ff ff ff ff e8 ?? ?? ?? ?? 83 c4 30 85 c0 ?? ?? 8b 0d ?? ?? ?? ?? ba ?? ?? ?? ?? ?? ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? ba ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 7e 14 0f 8b 4e 10 ?? ?? 8b 36 51 8b d6 8b c8 e8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

