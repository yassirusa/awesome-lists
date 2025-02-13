rule VirTool_Win64_Silentload_B_2147928576_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Silentload.B"
        threat_id = "2147928576"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Silentload"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 85 80 01 00 00 ?? ?? ?? ?? ?? 33 c9 ?? ?? ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 4c ?? ?? ?? ?? ba 28 00 00 00 48 8b c8 ff}  //weight: 1, accuracy: Low
        $x_1_2 = {48 8b 44 24 58 ?? ?? ?? ?? ?? 48 8b 4c 24 48 41 b9 10 00 00 00 48 c7 44 24 28 00 00 00 00 33 d2 48 89 44 24 64 c7 44 24 60 01 00 00 00 c7 44 24 6c 02 00 00 00 48 c7 44 24 20 00 00 00 00 ff}  //weight: 1, accuracy: Low
        $x_1_3 = {48 8b 4c 24 48 ?? ?? ?? ?? ?? ?? ?? c7 44 24 28 5e 00 00 00 ?? ?? ?? ?? ?? ?? ?? 41 b9 02 00 00 00 48 89 44 24 20 45 33 c0 ff ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? 48 8b 4c 24 48 ?? ?? ?? ?? ?? c7 44 24 28 04 00 00 00 ?? ?? ?? ?? ?? ?? ?? 41 b9 04 00 00 00 48 89 44 24 20 45 33 c0 c7 44 24 50 01 00 00 00 ff}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

