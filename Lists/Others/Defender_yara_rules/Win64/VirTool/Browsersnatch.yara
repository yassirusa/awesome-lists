rule VirTool_Win64_Browsersnatch_A_2147924687_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Browsersnatch.A"
        threat_id = "2147924687"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Browsersnatch"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {4c 89 74 24 30 4c 89 74 24 28 ?? ?? ?? ?? ?? 48 89 44 24 20 48 8b 7c 24 60 4c 8b cf 33 d2 ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 85 c0 ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? e8}  //weight: 1, accuracy: Low
        $x_1_2 = {48 63 c2 48 ?? ?? ?? ?? ?? ?? 8b ?? ?? ?? ?? ?? ?? 48 03 d1 ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 8b c8 ff ?? ?? ?? ?? ?? 48 ?? ?? ?? 48 89 45 30 ?? ?? ?? ?? 48 8b d7 ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8b d8 48 8b d6 ?? ?? ?? ?? e8}  //weight: 1, accuracy: Low
        $x_1_3 = {48 8b d3 48 8b c8 e8 ?? ?? ?? ?? 85 c0 ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? e9 ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 48 8b ?? ?? ?? ?? ?? e8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

