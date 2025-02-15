rule Trojan_Win64_DLLHijack_EC_2147923737_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DLLHijack.EC!MTB"
        threat_id = "2147923737"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DLLHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {0f b6 08 48 8d 40 01 80 c1 4b 80 f1 3f 80 e9 4b 88 48 ff 48 83 ea 01 75 e7}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DLLHijack_DC_2147933584_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DLLHijack.DC!MTB"
        threat_id = "2147933584"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DLLHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "27"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "mpclient.dll" ascii //weight: 5
        $x_10_2 = "Hijackdll|Set COM Startup" ascii //weight: 10
        $x_10_3 = "Hijackdll|ReadBuffer" ascii //weight: 10
        $x_1_4 = "Wow64DisableWow64FsRedirection" ascii //weight: 1
        $x_1_5 = "dllhost.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

