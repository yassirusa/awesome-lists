rule Backdoor_MSIL_Mokes_MBP_2147838042_0
{
    meta:
        author = "defender2yara"
        detection_name = "Backdoor:MSIL/Mokes.MBP!MTB"
        threat_id = "2147838042"
        type = "Backdoor"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mokes"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "fsfhrgdddffdffffkhsjd" ascii //weight: 1
        $x_1_2 = "nhffskdsfkdfddafrffddhfscffdf" ascii //weight: 1
        $x_1_3 = "sdfffdsshfffdhf" ascii //weight: 1
        $x_1_4 = "fffffff" wide //weight: 1
        $x_1_5 = "GetMethod" ascii //weight: 1
        $x_1_6 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Backdoor_MSIL_Mokes_AAZU_2147899113_0
{
    meta:
        author = "defender2yara"
        detection_name = "Backdoor:MSIL/Mokes.AAZU!MTB"
        threat_id = "2147899113"
        type = "Backdoor"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mokes"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {03 08 03 8e 69 5d 18 58 1d 58 1f 09 59 03 08 03 8e 69 5d 91 07 08 07 8e 69 5d 18 58 1d 58 1f 09 59 91 61 28 ?? 00 00 0a 03 08 20 87 10 00 00 58 20 86 10 00 00 59 03 8e 69 5d 91 59 20 fa 00 00 00 58 1c 58 20 00 01 00 00 5d d2 9c 08 17 58 0c}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

