rule Trojan_Win32_Donkaykay_B_2147751732_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Donkaykay.B!dha"
        threat_id = "2147751732"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Donkaykay"
        severity = "Critical"
        info = "dha: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = " Failed CreatePick()!" ascii //weight: 2
        $x_2_2 = " Create pate Error! %d" ascii //weight: 2
        $x_1_3 = " hand %d %d %s%s" ascii //weight: 1
        $x_1_4 = "[-] En failed" ascii //weight: 1
        $x_1_5 = "[-] connection to %s:%d error!:%d" ascii //weight: 1
        $x_2_6 = "Get the proxy2 information %s" wide //weight: 2
        $x_3_7 = "~Tall1net19.tmp" wide //weight: 3
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 2 of ($x_1_*))) or
            ((2 of ($x_2_*))) or
            ((1 of ($x_3_*) and 1 of ($x_1_*))) or
            ((1 of ($x_3_*) and 1 of ($x_2_*))) or
            (all of ($x*))
        )
}

