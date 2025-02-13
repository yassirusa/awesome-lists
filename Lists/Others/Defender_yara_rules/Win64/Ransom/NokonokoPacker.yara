rule Ransom_Win64_NokonokoPacker_AA_2147841860_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/NokonokoPacker.AA!MTB"
        threat_id = "2147841860"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "NokonokoPacker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {42 31 04 09 49 83 c1 04 8b 83 ?? ?? ?? ?? 01 43 ?? 8b 83 ?? ?? ?? ?? 01 83 ?? ?? ?? ?? 49 81 f9 ?? ?? ?? ?? 8b 83 ?? ?? ?? ?? 2b 43 ?? 48 8b 8b ?? ?? ?? ?? 05 ?? ?? ?? ?? 01 83 ?? ?? ?? ?? 8b 83 ?? ?? ?? ?? 33 83 ?? ?? ?? ?? 35 ?? ?? ?? ?? 89 83 ?? ?? ?? ?? 8b 43 ?? 42 31 04 09}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

