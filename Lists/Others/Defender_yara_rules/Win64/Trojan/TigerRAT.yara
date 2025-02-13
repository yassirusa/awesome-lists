rule Trojan_Win64_TigerRAT_MK_2147839588_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/TigerRAT.MK!MTB"
        threat_id = "2147839588"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "TigerRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 c2 89 43 ?? 0f b6 c0 03 43 ?? 69 c8 ?? ?? ?? ?? ff c1 89 4b ?? 0f b6 43 ?? 41 ?? ?? ?? 48 33 c8 41 c1 e8 ?? 41 ?? ?? ?? 41 33 c0 89 43 ?? 41 8b c1 83 f0 ?? 41 ?? ?? ?? c1 e8 ?? 41 32 c2 42 88 ?? ?? ?? 4d 3b dd 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_TigerRAT_A_2147916848_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/TigerRAT.A!dha"
        threat_id = "2147916848"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "TigerRAT"
        severity = "Critical"
        info = "dha: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "500"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "ModuleShell@@" ascii //weight: 100
        $x_100_2 = "ModuleSocksTunnel@@" ascii //weight: 100
        $x_100_3 = "ProtocolTcpPure@@" ascii //weight: 100
        $x_100_4 = "ProtocolInterface@@" ascii //weight: 100
        $x_100_5 = "CryptorInterface@@" ascii //weight: 100
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

