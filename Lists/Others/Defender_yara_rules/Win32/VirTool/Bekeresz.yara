rule VirTool_Win32_Bekeresz_A_2147924962_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/Bekeresz.A!MTB"
        threat_id = "2147924962"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Bekeresz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c7 44 24 04 00 00 00 00 89 04 24 ?? ?? ?? ?? ?? ?? ?? 83 ec 14 89 45 f4 83 7d f4 00 ?? ?? c7 44 24 04 98 ff 4b 00 c7 04 24 60 ea 4b 00 ?? ?? ?? ?? ?? c7 04 24 f0 02 4b 00 89 c1 ?? ?? ?? ?? ?? 83 ec 04 8b 45 a0 c7 44 24 04 01 00 00 00 89 04 24 ?? ?? ?? ?? ?? ?? ?? 83 ec 08 ?? ?? ?? ?? ?? 8b 45 a0 c7 44 24 10 00 00 00 00 8b 55 10 89 54 24 0c 8b 55 0c 89 54 24 08 8b 55 f4 89 54 24 04 89 04 24}  //weight: 1, accuracy: Low
        $x_1_2 = {55 89 e5 57 83 ec 54 ?? ?? ?? ?? ?? 83 f0 01 84 c0 ?? ?? ?? ?? ?? b8 00 00 00 00 b9 0f 00 00 00 89 d7 f3 ab c7 45 bc 3c 00 00 00 c7 45 c8 44 f0 4b 00 ?? ?? ?? ?? ?? ?? ?? 89 45 cc c7 45 d8 00 00 00 00 ?? ?? ?? 89 04 24}  //weight: 1, accuracy: Low
        $x_1_3 = {55 89 e5 53 83 ec 34 ?? ?? ?? 89 45 f4 ?? ?? ?? ?? ?? ?? ?? ?? 89 54 24 04 ?? ?? ?? ?? ?? ?? ?? 89 c1 ?? ?? ?? ?? ?? 83 ec 08 ?? ?? ?? 89 c1}  //weight: 1, accuracy: Low
        $x_1_4 = {55 89 e5 53 83 ec 34 c7 45 f0 00 00 00 00 c7 44 24 04 06 00 00 00 c7 04 24 00 00 00 00 a1 fc 44 51 00 ?? ?? 83 ec 08 89 45 f4 83 7d f4 00 ?? ?? ?? ?? ?? 89 04 24 ?? ?? ?? ?? ?? 89 c3 ?? ?? ?? ?? ?? 89 5c 24 10 89 44 24 0c c7 44 24 08 17 00 00 00 c7 44 24 04 00 00 00 00 c7 04 24 34 67 4c 00}  //weight: 1, accuracy: Low
        $x_1_5 = {83 ec 04 8d ?? ?? ?? ?? ?? ba a8 01 4c 00 b8 2b 01 00 00 8b 1a 89 19 8b 5c 02 fc 89 5c 01 fc ?? ?? ?? 83 e3 fc 29 d9 29 ca 01 c8 83 e0 fc c1 e8 02 89 df 89 d6 89 c1 f3 a5 c7 45 e0 2b 01 00 00 8b 45 e0 89 44 24 08 ?? ?? ?? ?? ?? ?? 89 44 24 04}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

