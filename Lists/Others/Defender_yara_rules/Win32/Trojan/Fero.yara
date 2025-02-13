rule Trojan_Win32_Fero_SPDB_2147908644_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fero.SPDB!MTB"
        threat_id = "2147908644"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fero"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "EbfeUadehahctkdan" ascii //weight: 2
        $x_1_2 = "ipsoiawe33.dll" ascii //weight: 1
        $x_1_3 = "EbfeUadehahctkdan" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Fero_ASGA_2147909276_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fero.ASGA!MTB"
        threat_id = "2147909276"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fero"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "daythethat.meatRfirmament" wide //weight: 1
        $x_1_2 = "grassJfirmamentyyou.re6wereheavendayfirmament" wide //weight: 1
        $x_1_3 = "qqgiventland.bXflyO" wide //weight: 1
        $x_1_4 = "B0can.tpwithout5twoB" wide //weight: 1
        $x_1_5 = "lover.Fm" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Fero_SPVB_2147910549_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fero.SPVB!MTB"
        threat_id = "2147910549"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fero"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "OsTlhtlohe" ascii //weight: 2
        $x_1_2 = "hrtbddd69.dll" ascii //weight: 1
        $x_1_3 = "OsTlhtlohe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Fero_SPPP_2147914750_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fero.SPPP!MTB"
        threat_id = "2147914750"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fero"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "TihEethoueows" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

