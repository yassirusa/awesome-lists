rule VirTool_Win32_Pheweq_A_2147763587_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/Pheweq.A!MTB"
        threat_id = "2147763587"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Pheweq"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "GoSH/final.go" ascii //weight: 1
        $x_1_2 = "wintrmvte/GoSH" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

