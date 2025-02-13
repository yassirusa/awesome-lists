rule Trojan_Win32_Rugmi_RH_2147899835_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Rugmi.RH!MTB"
        threat_id = "2147899835"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Rugmi"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "P:\\fi\\GPU\\SSD\\4o\\switch\\Synchronization\\Buffer\\oe\\x86\\debug\\server\\firm.pdb" ascii //weight: 5
        $x_1_2 = {56 75 31 8b 35 70 90 46 00 8b ce ff 75 08 33 35 dc b5 46 00 83 e1 1f d3 ce}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Rugmi_AMMD_2147905911_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Rugmi.AMMD!MTB"
        threat_id = "2147905911"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Rugmi"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b 4d f8 83 c1 04 89 4d f8 81 7d f8 00 70 00 00 7d ?? 8b 55 e4 03 55 f8 8b 02 03 45 d8 8b 4d f0 03 4d f8 89 01 eb}  //weight: 2, accuracy: Low
        $x_2_2 = {8d 55 d4 52 8b 45 d4 50 68 00 70 00 00 8b 4d f0 51 ff 55}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Rugmi_NR_2147906167_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Rugmi.NR!MTB"
        threat_id = "2147906167"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Rugmi"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {8b 4c d6 08 03 c8 89 4c d5 ?? 8b 4c d6 0c 03 c8 89 4c d5 ?? 42 81 fa ff 0b 00 00 72 e3}  //weight: 3, accuracy: Low
        $x_3_2 = {e9 e3 fe ff ff 8d b6 00 00 00 00 0c ?? 75 08 e8 7b 00 00 00 8b c8 e8 d4 ea ff ff 8b 45 08 5d}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Rugmi_RZ_2147913084_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Rugmi.RZ!MTB"
        threat_id = "2147913084"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Rugmi"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b 4c 05 00 03 ca 89 0c 06 8b 4b ?? 03 c1 8b 4b ?? 3b c1 72 eb}  //weight: 2, accuracy: Low
        $x_2_2 = {8b 43 28 8b 0c 30 89 0c 32 8b 7b ?? 03 f7 8b 43 ?? 3b f0 72 eb}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Rugmi_RP_2147922442_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Rugmi.RP!MTB"
        threat_id = "2147922442"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Rugmi"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f 93 c1 39 c7 0f 93 c0 08 c1 0f 84 ?? ?? ?? ?? 8d 46 ff 83 f8 03 0f 86 ?? ?? ?? ?? 89 f1 66 0f 6e 54 24 0c 89 f8 c1 e9 02 c1 e1 04 66 0f 70 ca 00 01 f9 66 ?? f3 0f 6f 02 83 c0 ?? 83 c2 03 66 0f fe c1 0f 11 40 f0 39 c8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

