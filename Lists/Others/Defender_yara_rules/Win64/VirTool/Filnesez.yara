rule VirTool_Win64_Filnesez_A_2147891646_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Filnesez.A!MTB"
        threat_id = "2147891646"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Filnesez"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 44 24 30 0f 57 c0 0f 11 44 24 38 4c 89 74 24 48 4c 89 74 24 50 41 b8 0a 00 00 00 48 8d ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? e8 ?? ?? ?? ?? ?? 8b d7 48 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b d8 48 8d ?? ?? ?? ?? ?? 48 8d 0d}  //weight: 1, accuracy: Low
        $x_1_2 = {48 89 7c 24 30 45 33 c0 48 8d ?? ?? ?? ?? ?? 33 d2 ff 15 ?? ?? ?? ?? 48 8b f8 48 8b cb 48 85 c0 ?? ?? 48 8b d0 e8 ?? ?? ?? ?? 48 8b cb ff 15}  //weight: 1, accuracy: Low
        $x_1_3 = {48 83 bc 24 18 01 00 00 08 48 0f 43 94 24 00 01 00 00 4c 8b 84 24 10 01 00 00 48 8b c8 e8 ?? ?? ?? ?? 48 8b c8 e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8d 94 ?? ?? ?? ?? ?? 48 8d 8c ?? ?? ?? ?? ?? e8 ca}  //weight: 1, accuracy: Low
        $x_1_4 = {48 89 43 08 48 89 5c 24 20 45 33 c9 45 33 c0 ba ff ff ff ff 33 c9 ff 15 ?? ?? ?? ?? 85 c0 0f 88 ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 48 8b c8 48 8d ?? ?? ?? ?? ?? ff 15}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

