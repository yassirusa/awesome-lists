rule VirTool_Win64_Imperservesz_A_2147912788_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Imperservesz.A!MTB"
        threat_id = "2147912788"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Imperservesz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 5c 24 10 48 89 6c 24 18 57 48 83 ec 70 48 8b fa 48 8b d9 48 8b 0d 2c 66 00 00 ?? ?? ?? ?? ?? ?? ?? 49 8b e8 ?? ?? ?? ?? ?? 48 8b c8 48 8b d7 ?? ?? ?? ?? ?? 48 8b c8 [0-19] 41 b8 3f 00 0f 00 ?? ?? ?? ?? ?? ?? ?? 48 8b cb ?? ?? ?? ?? ?? ?? 48 8b d8 48 85 c0}  //weight: 1, accuracy: Low
        $x_1_2 = {4c 8b 45 78 48 8b c8 ?? ?? ?? ?? ?? 48 8b c8 [0-25] 48 83 bd a0 00 00 00 10 48 0f 43 95 88 00 00 00 45 33 c0 48 8b 4d 18 ?? ?? ?? ?? ?? ?? 48 8b 0d 40 57 00 00 85 c0}  //weight: 1, accuracy: Low
        $x_1_3 = {48 89 5c 24 10 55 56 57 41 56 41 57 ?? ?? ?? ?? ?? 48 81 ec 20 01 00 00 48 8b 05 d1 a0 00 00 48 33 c4 48 89 45 10 49 8b d8 44 8b f1 45 33 ff 4c 89 7c 24 60 ?? ?? ?? ?? ?? ?? ?? 48 8b 0d 1e 53 00 00 [0-16] 41 8b ce ?? ?? ?? ?? ?? ?? 4c 39 7c 24 60}  //weight: 1, accuracy: Low
        $x_1_4 = {41 b8 00 00 00 10 48 8b d7 48 8b cb ?? ?? ?? ?? ?? ?? 48 8b d8 48 85 c0 ?? ?? ?? ?? ?? ?? ?? ?? 48 8b 0d 93 64 00 00 ?? ?? ?? ?? ?? ?? ?? 8b d8 ?? ?? ?? ?? ?? 48 8b c8 8b d3 ?? ?? ?? ?? ?? ?? 48 8b c8 [0-19] 48 8b ce}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

