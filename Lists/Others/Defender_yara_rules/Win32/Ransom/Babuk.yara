rule Ransom_Win32_Babuk_SG_2147773626_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Babuk.SG!MTB"
        threat_id = "2147773626"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Babuk"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "we are the BABUK team" ascii //weight: 1
        $x_1_2 = "http://babukq4e2p4wu4iq.onion" ascii //weight: 1
        $x_1_3 = "/c vssadmin.exe delete shadows /all /quiet" ascii //weight: 1
        $x_1_4 = "CryptEncrypt" ascii //weight: 1
        $x_1_5 = "How To Restore Your Files" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win32_Babuk_SIB_2147779569_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Babuk.SIB!MTB"
        threat_id = "2147779569"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Babuk"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "23"
        strings_accuracy = "High"
    strings:
        $x_20_1 = "vssadmin.exe delete shadows /all /quiet" ascii //weight: 20
        $x_10_2 = "babuk ransomware gree" ascii //weight: 10
        $x_1_3 = ".onion" ascii //weight: 1
        $x_1_4 = ".babyk" ascii //weight: 1
        $x_1_5 = "BackupExecVSSProvider" ascii //weight: 1
        $x_1_6 = "BackupExecAgentAccelerator" ascii //weight: 1
        $x_1_7 = "BackupExecAgentBrowser" ascii //weight: 1
        $x_1_8 = "BackupExecDiveciMediaService" ascii //weight: 1
        $x_1_9 = "BackupExecJobEngine" ascii //weight: 1
        $x_1_10 = "BackupExecManagementService" ascii //weight: 1
        $x_1_11 = "BackupExecRPCService" ascii //weight: 1
        $x_1_12 = "VeeamTransportSvc" ascii //weight: 1
        $x_1_13 = "VeeamDeploymentService" ascii //weight: 1
        $x_1_14 = "VeeamNFSSvc" ascii //weight: 1
        $x_1_15 = "veeam" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 13 of ($x_1_*))) or
            ((1 of ($x_20_*) and 3 of ($x_1_*))) or
            ((1 of ($x_20_*) and 1 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Ransom_Win32_Babuk_MK_2147784838_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Babuk.MK!MTB"
        threat_id = "2147784838"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Babuk"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Vssadmin.exe delete shadows /all /quiet" ascii //weight: 1
        $x_1_2 = ".babyk" ascii //weight: 1
        $x_1_3 = "Ransomware" ascii //weight: 1
        $x_1_4 = "How To Restore Your Files.txt" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win32_Babuk_ECCP_2147793189_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Babuk.ECCP!MTB"
        threat_id = "2147793189"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Babuk"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {81 7d b0 6e 67 20 64 0f 85 d5 04 00 00 81 7d b4 6f 6e 67 20 0f 85 c8 04 00 00 81 7d b8 6c 6f 6f 6b 0f 85 bb 04 00 00 81 7d bc 73 20 6c 69 0f 85 ae 04 00 00 81 7d c0 6b 65 20 68 0f 85 a1 04 00 00 81 7d c4 6f 74 20 64 0f 85 94 04 00 00 81 7d c8 6f 67 21 21 0f 85 87 04}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win32_Babuk_RAN_2147904982_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Babuk.RAN!MTB"
        threat_id = "2147904982"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Babuk"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Your network is hacked and files are encrypted" ascii //weight: 1
        $x_1_2 = "All data is stored until you will pay" ascii //weight: 1
        $x_1_3 = "After payment we will provide you the programs for decryption and we will delete your data" ascii //weight: 1
        $x_1_4 = "You will forever lose the reputation" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win32_Babuk_ARA_2147912661_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Babuk.ARA!MTB"
        threat_id = "2147912661"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Babuk"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "HCRYPTPROV, bye!" ascii //weight: 2
        $x_2_2 = "keys generated." ascii //weight: 2
        $x_2_3 = ".txt can't be bigger than" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

