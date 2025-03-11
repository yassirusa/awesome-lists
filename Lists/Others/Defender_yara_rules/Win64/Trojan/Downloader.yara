rule Trojan_Win64_Downloader_SA_2147935709_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Downloader.SA"
        threat_id = "2147935709"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Downloader"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "ssst ik verstop me in notepad++" ascii //weight: 1
        $x_1_2 = "/d2.bin" ascii //weight: 1
        $x_1_3 = "nietmalicious.nl" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (2 of ($x*))
}

