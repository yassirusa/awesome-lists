rule TrojanDownloader_Win32_Necurs_SIB_2147809334_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:Win32/Necurs.SIB!MTB"
        threat_id = "2147809334"
        type = "TrojanDownloader"
        platform = "Win32: Windows 32-bit platform"
        family = "Necurs"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "C:\\Users\\george\\Desktop\\program.exe" wide //weight: 1
        $x_1_2 = {06 23 f2 b8 ?? ?? ?? ?? c1 c8 ?? b9 ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? 8b 16 2b f1 23 d1 4e 3b d0 75 ?? b9 ?? ?? ?? ?? 81 f1 07 ?? 09 03 ce 81 c1 ?? ?? ?? ?? 89 4d}  //weight: 1, accuracy: Low
        $x_1_3 = {8b 03 03 c7 ba ?? ?? ?? ?? 81 ea ?? 01 03 da 35 ?? ?? ?? ?? 89 45 ?? 03 cd 51 e8 ?? ?? ?? ?? 56 5a 59 2b cd 8b 55 ?? 81 c2 ?? ?? ?? ?? 03 d1 3b d1 0f 85 ?? ?? ?? ?? 2b d1 49 3b ca 75}  //weight: 1, accuracy: Low
        $x_1_4 = {8b 13 8b 85 ?? ?? ?? ?? 2d ?? ?? ?? ?? 3b d0 0f 85 ?? ?? ?? ?? ba ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? 03 da 8b 13 8b 45 ?? c1 c0 ?? 3b d0 0f 85 ?? ?? ?? ?? ba ?? ?? ?? ?? c1 c2 ?? 03 da 8b 13 8b 45 ?? 35 ?? ?? ?? ?? 3b d0 0f 85 ?? ?? ?? ?? ba ?? ?? ?? ?? 81 f2 ?? 0e 03 da 8b 13 8b 45 ?? 35 ?? ?? ?? ?? 3b d0 0f 85 ?? ?? ?? ?? ba ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? 03 da 8b 13 8b 45 ?? 05 ?? ?? ?? ?? 3b d0 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

