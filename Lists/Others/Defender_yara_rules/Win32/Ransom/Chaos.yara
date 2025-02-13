rule Ransom_Win32_Chaos_NIT_2147929717_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Chaos.NIT!MTB"
        threat_id = "2147929717"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Chaos"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8b 4c 24 20 8b 01 8b 15 38 b3 92 00 89 10 8b 01 89 44 24 28 8d 1d 38 b3 92 00 89 1c 24 89 54 24 04 89 44 24 08 e8 9d 5f ff ff 0f b6 44 24 0c 84 c0 74 cd}  //weight: 2, accuracy: High
        $x_2_2 = {66 0f 6e 44 24 08 66 0f c4 c3 04 f3 0f 70 c0 00 66 0f 6f c8 66 0f ef 05 e0 b6 92 00 66 0f 38 dc c0 83 fb 10}  //weight: 2, accuracy: High
        $x_1_3 = {89 44 24 04 e8 f8 f9 ff ff 83 7c 24 08 ff 0f 84 86 01 00 00 8b 44 24 24 8b 0d 50 d1 8c 00 8b 94 24 10 03 00 00 89 0c 24 89 44 24 04 89 54 24 08 e8 1c fa ff ff}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

