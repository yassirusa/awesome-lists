rule Trojan_MSIL_XWorm_GCD_2147838082_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.GCD!MTB"
        threat_id = "2147838082"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {fe 09 05 00 20 26 35 b2 04 26 26 fe 09 04 00 20 35 6a 07 00 26 26 73 04 00 00 0a fe 0e 00 00 fe 09 00 00 6f ?? ?? ?? 0a fe 0e 01 00 20 00 00 00 00 fe 0e 02 00 2b 2f fe 0c 01 00 fe 0c 02 00 93 fe 0e 03 00 fe 0c 00 00 fe 0c 03 00 fe 09 02 00 59 d1}  //weight: 10, accuracy: Low
        $x_1_2 = "Invoke" ascii //weight: 1
        $x_1_3 = "set_UseShellExecute" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CXR_2147843453_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CXR!MTB"
        threat_id = "2147843453"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {1b 2d 24 26 28 ?? ?? ?? ?? 06 6f ?? ?? ?? ?? 28 ?? ?? ?? ?? 17 2d 13 26 07 16 07 8e 69 18 2d 0d 26 26 26 07 0c de 10 0a 2b da 0b 2b eb 28 ?? ?? ?? ?? 2b}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AX_2147846424_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AX!MTB"
        threat_id = "2147846424"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {73 25 00 00 0a 13 05 11 05 07 6f ?? ?? ?? 0a 17 73 27 00 00 0a 13 06 00 02 28 ?? ?? ?? 0a 0c 11 06 08 16 08 8e 69 6f ?? ?? ?? 0a 00 11 06}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CXRL_2147847845_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CXRL!MTB"
        threat_id = "2147847845"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {72 01 01 00 70 6f ?? 00 00 0a 6f ?? 00 00 0a [0-5] 06 18 6f ?? 00 00 0a 06 6f ?? 00 00 0a 13 04 02 0d 11 04 09 16 09 8e b7 6f ?? 00 00 0a 0b de 11 de 0f 25 28 ?? 00 00 0a 13 05 28 ?? 00 00 0a de 00 07}  //weight: 1, accuracy: Low
        $x_1_2 = "5xaDLhNA4xr7Tocwz" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_MC_2147850596_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.MC!MTB"
        threat_id = "2147850596"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "XWorm V3.1" wide //weight: 1
        $x_1_2 = "\\root\\SecurityCenter2" wide //weight: 1
        $x_1_3 = "Select * from AntivirusProduct" wide //weight: 1
        $x_1_4 = "PCLogoff" wide //weight: 1
        $x_1_5 = "shutdown.exe /f /s /t 0" wide //weight: 1
        $x_1_6 = "Urlhide" wide //weight: 1
        $x_1_7 = "StopDDos" wide //weight: 1
        $x_1_8 = "RunRecovery" wide //weight: 1
        $x_1_9 = "-ExecutionPolicy Bypass -File" wide //weight: 1
        $x_1_10 = "[ENTER]" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CXLM_2147850803_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CXLM!MTB"
        threat_id = "2147850803"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "RunAntiAnalysis" ascii //weight: 1
        $x_1_2 = "GetAntivirus" ascii //weight: 1
        $x_1_3 = "CheckDefender" ascii //weight: 1
        $x_1_4 = "CrowdStrike" ascii //weight: 1
        $x_1_5 = "encryptDirectory" ascii //weight: 1
        $x_1_6 = "EncryptPassword" ascii //weight: 1
        $x_1_7 = "SandBox" ascii //weight: 1
        $x_1_8 = "VirtualBox" ascii //weight: 1
        $x_1_9 = "DDebugger" ascii //weight: 1
        $x_1_10 = "AntiCis" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDC_2147851346_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDC!MTB"
        threat_id = "2147851346"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {7e 0e 00 00 04 6f 7b 00 00 0a 02 16 02 8e 69 6f 7c 00 00 0a 0a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDD_2147851624_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDD!MTB"
        threat_id = "2147851624"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {28 1e 00 00 06 80 01 00 00 04 7e 01 00 00 04 28 03 00 00 06 28 1c 00 00 0a 28 1d 00 00 0a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDE_2147851754_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDE!MTB"
        threat_id = "2147851754"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {28 11 00 00 0a 0a 06 28 04 00 00 06 28 12 00 00 0a 0a 06 72 3f 00 00 70 28 12 00 00 0a 0a 06}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_NWM_2147853096_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.NWM!MTB"
        threat_id = "2147853096"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 28 2f 00 00 06 28 ?? 00 00 06 0b 07 8e 69 28 ?? 00 00 0a 72 ?? 00 00 70 28 ?? 00 00 0a 28 ?? 00 00 06 0c 06 08 16 08 8e 69 6f ?? 00 00 0a}  //weight: 5, accuracy: Low
        $x_5_2 = {6f 62 00 00 0a 6f ?? 00 00 0a 00 07 18 6f ?? 00 00 0a 00 07 6f ?? 00 00 0a 0d 02 13 04 09 11 04 16 11 04 8e 69 6f ?? 00 00 0a}  //weight: 5, accuracy: Low
        $x_1_3 = "Plugin.Resources" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_NW_2147891165_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.NW!MTB"
        threat_id = "2147891165"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {28 f1 00 00 0a 02 6f ?? ?? 00 0a 0a 06 0b 1f 20 8d ?? ?? 00 01 25 d0 ?? ?? 00 04 28 ?? ?? 00 0a 0c 28 ?? ?? 00 0a 03 6f ?? ?? 00 0a 28 ?? ?? 00 06 0d 73 ?? ?? 00 0a 13 04 28 ?? ?? 00 06 13 05 11 05 08 6f ?? ?? 00 0a 11 05 09 6f ?? ?? 00 0a 11 04 11 05 6f ?? ?? 00 0a 17 73 ?? ?? 00 0a 13 06 11 06 07 16 07 8e 69 6f ?? ?? 00 0a 11 06 6f ?? ?? 00 0a 11 04 6f ?? ?? 00 0a 28 ?? ?? 00 0a}  //weight: 5, accuracy: Low
        $x_1_2 = "WriteProcessMemory" ascii //weight: 1
        $x_1_3 = "hotqft.Resources" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_NW_2147891165_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.NW!MTB"
        threat_id = "2147891165"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "OfflineKeylogger Not Enabled" wide //weight: 2
        $x_2_2 = "StopDDos" wide //weight: 2
        $x_2_3 = "shutdown.exe /f /s /t 0" wide //weight: 2
        $x_2_4 = "ExecutionPolicy Bypass -File" wide //weight: 2
        $x_1_5 = "injRun" wide //weight: 1
        $x_1_6 = "Modified successfully!" wide //weight: 1
        $x_1_7 = "Select * from AntivirusProduct" wide //weight: 1
        $x_1_8 = "Plugins Removed!" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_MBJS_2147892681_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.MBJS!MTB"
        threat_id = "2147892681"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "$38c4f9b5-a084-4c14-bebe-a7690f8d4b1e" ascii //weight: 10
        $x_10_2 = "$038ce683-2255-442c-8674-62e8cfe85954" ascii //weight: 10
        $x_1_3 = "XClient.exe" ascii //weight: 1
        $x_1_4 = "FromBase64String" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 2 of ($x_1_*))) or
            ((2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_MSIL_XWorm_CCDT_2147895861_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CCDT!MTB"
        threat_id = "2147895861"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "ekovnI.tnioPyrtnE.daoL" wide //weight: 1
        $x_1_2 = "4D5A90000300000004000000FFFF0000B80000000000000040" wide //weight: 1
        $x_1_3 = "001113729F0A007016286A00000A1633207E260000046FA500000ADE0F25282400000A1304282600000ADE00386A040000111372B10A007016" wide //weight: 1
        $x_1_4 = "6F00494E44415445005370726561640055414300416E746976" wide //weight: 1
        $x_1_5 = "79436F6D70616E7941747472696275746500417373656D626C" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMBA_2147902297_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMBA!MTB"
        threat_id = "2147902297"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {d2 05 53 00 71 00 51 00 c7 05 44 00 4d 00 41 00 c7 05 44 00 41 00 45 00 c7 05 44 00 41 00 41 00 a9 05 2a 00 38 00 41 00 c7 05 49 00 67 00 41 00 c7 05 44 00 41 00 41 00 c7 05 44 00 41 00 41 00 d7}  //weight: 2, accuracy: High
        $x_2_2 = {d2 05 48 00 30 00 68 00 d0 05 42 00 68 00 70 00 e5 05 7c 00 42 00 77 00 e5 05 68 00 39 00 6e 00}  //weight: 2, accuracy: High
        $x_1_3 = "SelenaGomez.Program" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMBB_2147902298_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMBB!MTB"
        threat_id = "2147902298"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {06 07 02 17 8d ?? 00 00 01 0c 08 16 07 8c ?? 00 00 01 a2 08 14 28}  //weight: 2, accuracy: Low
        $x_2_2 = {16 17 9c 11 ?? 28 ?? 00 00 0a 28 ?? 00 00 0a 14 72 ?? ?? 00 70 16 8d ?? ?? ?? ?? 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a 14 72 ?? ?? 00 70 18 8d ?? ?? ?? ?? 0d 09 16 14 a2 09 17 14 a2 09 14 14 14 17}  //weight: 2, accuracy: Low
        $x_1_3 = "XorObject" ascii //weight: 1
        $x_1_4 = "EntryPoint" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_KAC_2147902680_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.KAC!MTB"
        threat_id = "2147902680"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {28 03 00 00 2b 0b 2b 00 07 2a}  //weight: 1, accuracy: High
        $x_1_2 = {34 00 35 00 34 00 37 00 39 00 37 00 30 00 36 00 35 00 30 00 30 00 35 00 30 00 37 00 32 00 36}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CCHT_2147903438_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CCHT!MTB"
        threat_id = "2147903438"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {06 08 7e 45 00 00 04 28 ?? 00 00 06 6f ?? 01 00 0a 6f ?? 01 00 0a 06 18 6f ?? 01 00 0a 06 6f ?? 01 00 0a 13 04 02 0d 11 04 09 16 09 8e b7 6f ?? 01 00 0a 0b de 11}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDF_2147904897_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDF!MTB"
        threat_id = "2147904897"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8e 69 6f 45 00 00 0a 0a 06 0b}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDG_2147906099_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDG!MTB"
        threat_id = "2147906099"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 04 09 16 09 8e b7 6f ef 00 00 0a 0b}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_GPB_2147906996_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.GPB!MTB"
        threat_id = "2147906996"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0c 08 17 61 d1 0c 07 08 6f ?? 00 00 0a 26 09 17 58 0d 09 02}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AXW_2147908235_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AXW!MTB"
        threat_id = "2147908235"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {0a 16 0b 2b 2d 06 07 9a 0c 72 ?? 00 00 70 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 8c ?? 00 00 01 28 ?? 00 00 0a 28 ?? 00 00 0a de 03 26 de 00 07 17 58}  //weight: 2, accuracy: Low
        $x_1_2 = "a1044216.xsph.ru/" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AXW_2147908235_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AXW!MTB"
        threat_id = "2147908235"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "a88d60ed-a77a-4724-8158-78f38e7fb298" ascii //weight: 1
        $x_2_2 = "ImmobiliWinForms.FormTipoImmobile.resources" ascii //weight: 2
        $x_2_3 = "ImmobiliWinForms.NuovoImmobile.resources" ascii //weight: 2
        $x_1_4 = "SELECT * FROM Proprietari" wide //weight: 1
        $x_1_5 = "SELECT * FROM TipiImmobile" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDI_2147911515_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDI!MTB"
        threat_id = "2147911515"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {0d 07 16 09 a2 07 17 08 6f 3c 00 00 0a a2 07 18 07 16 9a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SPZF_2147912608_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SPZF!MTB"
        threat_id = "2147912608"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 07 08 6f ?? ?? ?? 0a 0d 12 03 28 ?? ?? ?? 0a 1f 64 fe 01 13 04 11 04 2c 0e 00 06 6f ?? ?? ?? 0a 13 05 38 dd 00 00 00}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SG_2147914272_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SG!MTB"
        threat_id = "2147914272"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Urlhide" wide //weight: 1
        $x_1_2 = "shutdown.exe -L" wide //weight: 1
        $x_1_3 = "RunShell" wide //weight: 1
        $x_1_4 = "OfflineKeylogger Not Enabled" wide //weight: 1
        $x_1_5 = "/dev/disk/by-uuid" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMAI_2147914740_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMAI!MTB"
        threat_id = "2147914740"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {1f 16 5d 91 13 ?? 07 09 91 11 ?? 61 13 ?? 07 09 17 58 08 5d 91}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMAJ_2147914863_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMAJ!MTB"
        threat_id = "2147914863"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {04 0a 06 72 ?? 00 00 70 6f ?? 00 00 0a 28 ?? 00 00 06 0b 07 06 72 ?? 01 00 70 6f ?? 00 00 0a 28 ?? 00 00 06 0c 02 28 ?? 00 00 06 0d 08 09 8e 69 1f 40 12 04 28 ?? 00 00 06 26 09 16 08 09 8e 69 28 ?? 00 00 0a 00 08 09 8e 69 11 04 12 05 28 ?? 00 00 06 26 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SPXF_2147915068_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SPXF!MTB"
        threat_id = "2147915068"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {2b 23 2b 28 2b 2d 09 08 6f ?? ?? ?? 0a 08 6f ?? ?? ?? 0a 0a de 0a}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SPCF_2147915069_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SPCF!MTB"
        threat_id = "2147915069"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 06 06 6f ?? ?? ?? 0a 06 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0b 73 08 00 00 0a 0c 08 07 17 73 09 00 00 0a 0d 28 ?? ?? ?? 06 13 04 09 11 04 16 11 04 8e 69}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDJ_2147915123_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDJ!MTB"
        threat_id = "2147915123"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {09 6f 35 01 00 0a 13 07 73 36 01 00 0a 13 04 11 04 11 07 17}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDK_2147916220_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDK!MTB"
        threat_id = "2147916220"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 0a 91 11 09 61 13 0b 11 07 17 58 08 58 08 5d 13 0c}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMAA_2147918470_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMAA!MTB"
        threat_id = "2147918470"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {08 5d 08 58 13 [0-30] 08 5d 13 [0-20] 61 [0-50] 20 00 04 00 00 59 [0-40] 20 00 01 00 00 5d 13}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AYA_2147919075_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AYA!MTB"
        threat_id = "2147919075"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "RunBotKiller" ascii //weight: 2
        $x_2_2 = "DetectVirtualMachine" ascii //weight: 2
        $x_2_3 = "DetectDebugger" ascii //weight: 2
        $x_2_4 = "DetectSandboxie" ascii //weight: 2
        $x_1_5 = "CreateMutex" ascii //weight: 1
        $x_1_6 = "payload" ascii //weight: 1
        $x_1_7 = "Select * from Win32_ComputerSystem" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDL_2147919879_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDL!MTB"
        threat_id = "2147919879"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {08 17 73 29 00 00 0a 13 04 11 04 06 16 06 8e 69 6f 2a 00 00 0a 09 6f 2b 00 00 0a 13 05}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMMI_2147920213_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMMI!MTB"
        threat_id = "2147920213"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0b 09 08 07 28 ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 0a 0a 28 ?? 00 00 0a 06 6f ?? 00 00 0a 6f ?? 00 00 0a 14 14 6f ?? 00 00 0a 74 ?? 00 00 01 13}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_DG_2147923702_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.DG!MTB"
        threat_id = "2147923702"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {11 04 11 13 95 d2 13 14 09 11 12 07 11 12 91 11 14 61 d2}  //weight: 3, accuracy: High
        $x_1_2 = {00 11 04 11 0c 11 0c 9e 00 11 0c 17 58 13 0c}  //weight: 1, accuracy: High
        $x_1_3 = "E4ZDFA4U8X5579G4VFS95G" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_MBXV_2147923885_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.MBXV!MTB"
        threat_id = "2147923885"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {20 a0 00 00 00 91 61 20 94 00 00 00 5f 9c}  //weight: 2, accuracy: High
        $x_1_2 = "Ac3yJZ5DcWkhZZ15W4" ascii //weight: 1
        $x_1_3 = "01fbf31b53a1" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDM_2147923892_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDM!MTB"
        threat_id = "2147923892"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {08 28 02 00 00 06 6f 20 00 00 0a 13 04 12 04 28 21 00 00 0a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AXO_2147924204_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AXO!MTB"
        threat_id = "2147924204"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {16 13 0a 2b 2b 11 05 11 0a 8f 15 00 00 01 25 47 08 d2 61 d2 52 11 0a 20 ff 00 00 00 5f 2d 0b 08 08 5a 20 b7 5c 8a 00 6a 5e 0c 11 0a 17 58 13 0a 11 0a 11 05 8e 69 32 cd}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AXO_2147924204_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AXO!MTB"
        threat_id = "2147924204"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {0a 16 13 04 02 28 ?? 00 00 0a 0c 08 13 08 16 13 07 2b 3a 11 08 11 07 91 13 06 11 06 09 11 04 6f ?? 00 00 0a 28 ?? 00 00 0a 61 b4 28 ?? 00 00 0a 13 05 06 11 05 6f ?? 00 00 0a 11 04 17 d6 09 6f}  //weight: 3, accuracy: Low
        $x_2_2 = {61 b4 13 05 06 11 05 6f ?? 00 00 0a 09 17 d6 08 6f ?? 00 00 0a 5d 0d 11 06 17 d6 13 06 11 06 11 08 32 bf}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AXM_2147924636_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AXM!MTB"
        threat_id = "2147924636"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0a 16 0b 2b 39 06 07 9a 0c 1f 0a 28 ?? 00 00 0a 72 ?? 00 00 70 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 8c ?? 00 00 01 28 ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 0a de 03 26 de 00 07 17 58}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_PXM_2147926249_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.PXM!MTB"
        threat_id = "2147926249"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {16 72 85 00 00 70 a2 25 17 08 a2 25 18 72 6a 01 00 70 a2}  //weight: 2, accuracy: High
        $x_2_2 = "$2310f750-46f3-4540-933b-8e52ec7a5068" ascii //weight: 2
        $x_1_3 = "AddFolderToDefenderExclusionList" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_PXM_2147926249_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.PXM!MTB"
        threat_id = "2147926249"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = "Hastane_Proje" wide //weight: 4
        $x_3_2 = {00 04 28 42 00 00 06 26 7e 0d 00 00 04 18 6f ?? 00 00 0a 00 02 03 02 03 02 02 03 05 28 ?? 00 00 06 0a 2b 00 06 2a}  //weight: 3, accuracy: Low
        $x_2_3 = {00 02 02 72 97 00 00 70 16 28 ?? 00 00 06 0a 2b 00 06 2a}  //weight: 2, accuracy: Low
        $x_1_4 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_PDM_2147926251_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.PDM!MTB"
        threat_id = "2147926251"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {00 03 04 05 73 99 01 00 0a 0b 07 1f 18 6f ?? ?? ?? 0a 0c 07 1e 6f ?? ?? ?? 0a 0d 00 73 9b 01 00 0a 13 04 11 04 08 6f ?? ?? ?? 0a 00 11 04 09 6f ?? ?? ?? 0a 00 11 04 17 6f ?? ?? ?? 0a 00 11 04 18 6f ?? ?? ?? 0a 00 11 04 6f ?? ?? ?? 0a 13 05 11 05 02 16 02 8e 69 6f ?? ?? ?? 0a 13 06 11 06 0a de 20}  //weight: 3, accuracy: Low
        $x_2_2 = "resources/bidoslxufit" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_ACEA_2147926724_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.ACEA!MTB"
        threat_id = "2147926724"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {0a 0b 07 72 15 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 07 72 47 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 07 6f ?? 00 00 0a 06 16 06 8e 69 6f ?? 00 00 0a 0c dd 10 00 00 00 07 39 06 00 00 00 07 6f ?? 00 00 0a dc}  //weight: 3, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AZEA_2147927534_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AZEA!MTB"
        threat_id = "2147927534"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {2b 69 38 6e 00 00 00 2b 31 72 ?? 05 00 70 2b 2d 2b 32 2b 37 72 ?? 06 00 70 2b 33 2b 38 2b 3d 6f ?? 00 00 0a 28 ?? ?? 00 06 0b 07 16 07 8e 69 6f ?? 00 00 0a 0c 1e 2c cf de 2f 06 2b cc 28 ?? 00 00 0a 2b cc 6f ?? 00 00 0a 2b c7 06 2b c6 28 ?? 00 00 0a 2b c6 6f ?? 00 00 0a 2b c1 06 2b c0}  //weight: 3, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AEFA_2147927663_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AEFA!MTB"
        threat_id = "2147927663"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 0a 06 17 6f ?? 00 00 0a 06 18 6f ?? 00 00 0a 73 0f 00 00 0a 25 06 03 04 6f ?? 00 00 0a 17 73 11 00 00 0a 25 02 16 02 8e 69 6f ?? 00 00 0a 6f ?? 00 00 0a 6f ?? 00 00 0a 0b de 09}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_PLKH_2147929214_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.PLKH!MTB"
        threat_id = "2147929214"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {0a 0d 09 06 07 6f ?? 00 00 0a 13 04 73 ?? 00 00 0a 13 05 11 05 11 04 17 73 ?? 00 00 0a 13 06 11 06 08 16 08 8e 69 6f ?? 00 00 0a 11 05 6f ?? 00 00 0a 13 07 de 27 11 06 2c 07 11 06 6f ?? 00 00 0a dc}  //weight: 10, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_BA_2147930133_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.BA!MTB"
        threat_id = "2147930133"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 08 11 07 91 13 06 11 06 09 11 04 6f 27 00 00 0a 28 28 00 00 0a 61 b4 28 29 00 00 0a 13 05 06 11 05 6f 2a 00 00 0a 11 04 17 d6 09 6f 2b 00 00 0a 5d 13 04 11 07 17 d6 13 07 11 07 11 08 8e b7 32 be}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SAN_2147931431_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SAN!MTB"
        threat_id = "2147931431"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {73 17 00 00 0a 25 02 6f 18 00 00 0a 25 17 6f 19 00 00 0a 25 17 6f 1a 00 00 0a 28 1b 00 00 0a 26 72 01 00 00 70 28 1c 00 00 0a de 18}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_PLIVH_2147932349_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.PLIVH!MTB"
        threat_id = "2147932349"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {07 11 04 02 11 04 17 62 6f ?? 00 00 0a 28 ?? 00 00 06 1a 62 02 11 04 17 62 17 58 6f ?? 00 00 0a 28 ?? 00 00 06 58 d2 9c 11 04 17 58 13 04 11 04 06 17 63 32 cb}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AAB_2147933381_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AAB!MTB"
        threat_id = "2147933381"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 06 18 6f ?? 00 00 0a 02 28 ?? 00 00 0a 0d 06 6f ?? 00 00 0a 13 04 11 04 09 16 09 8e 69 6f ?? 00 00 0a 13 05 28 ?? 00 00 0a 11 05 6f ?? 00 00 0a 13 06 dd}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AWX_2147933736_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AWX!MTB"
        threat_id = "2147933736"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {0b 06 8e 69 8d 16 00 00 01 0c 16 0d 2b 13 08 09 06 09 91 07 09 07 8e 69 5d 91 61 d2 9c 09 17 58 0d 09 06 8e 69 32 e7}  //weight: 2, accuracy: High
        $x_1_2 = "ResVolk.exe" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AWX_2147933736_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AWX!MTB"
        threat_id = "2147933736"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0b 16 0c 2b 3a 06 08 9a 28 ?? 00 00 0a 03 08 03 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 0d 09 59 08 1f 0a 5d 59 20 00 01 00 00 58 20 00 01 00 00 5d d1 13 04 07 11 04 6f ?? 00 00 0a 26 08 17 58 0c 08 06 8e 69}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_BB_2147934263_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.BB!MTB"
        threat_id = "2147934263"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {02 6f 1c 00 00 0a 0a 06 18 5b 8d 76 00 00 01 0b 16 0c 2b 18 07 08 18 5b 02 08 18 6f 90 00 00 0a 1f 10 28 96 00 00 0a 9c 08 18 58 0c 08 06 32 e4}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_BAA_2147934274_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.BAA!MTB"
        threat_id = "2147934274"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {9c 08 11 04 d6 0c 11 04 1f 1f 63 08 61 11 04 1f 1f 63 09 61 31 9e}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_ARX_2147934292_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.ARX!MTB"
        threat_id = "2147934292"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {0b 16 0c 2b 3a 06 08 9a 28 ?? 00 00 0a 03 08 03 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 0d 09 59 08 1f 2b 5d 59 20 00 01 00 00 58 20 00 01 00 00 5d d1 13 04 07 11 04 6f ?? 00 00 0a 26 08 17 58 0c}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_ARM_2147934594_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.ARM!MTB"
        threat_id = "2147934594"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0b 16 0c 2b 3a 06 08 9a 28 ?? 00 00 0a 03 08 03 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 0d 09 59 08 1f ?? 5d 59 20 00 01 00 00 58 20 00 01 00 00 5d d1 13 04 07 11 04 6f ?? 00 00 0a 26 08 17 58}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_PHU_2147934712_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.PHU!MTB"
        threat_id = "2147934712"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {07 11 04 07 8e 69 5d 91 13 05 06 11 04 8f ?? 00 00 01 25 47 11 05 1d 5a 20 00 01 00 00 5d d2 61 d2 52 08 11 04 06 11 04 91 11 04 1f 0d 5a 20 00 01 00 00 5d 59 11 05 61 d2 9c 11 04 17 58 13 04 11 04 06 8e 69 32 b9}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_PTL_2147935315_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.PTL!MTB"
        threat_id = "2147935315"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {2b 13 08 09 06 09 91 07 09 07 8e 69 5d 91 61 d2 9c 09 17 58 0d 09 06 8e 69 32 e7 28 10 00 00 0a}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_HHD_2147935321_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.HHD!MTB"
        threat_id = "2147935321"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {0a 0b 07 20 ?? 63 00 00 28 ?? 02 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 07 20 ?? 63 00 00 28 ?? 02 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 07 6f ?? 00 00 0a 02 16 02 8e 69 6f ?? 00 00 0a 0c de 1b}  //weight: 10, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_HHI_2147935393_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.HHI!MTB"
        threat_id = "2147935393"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {0a 07 1f 10 8d ?? 00 00 01 25 d0 ?? 01 00 04 28 ?? 00 00 0a 6f ?? 00 00 0a 06 07 6f ?? 00 00 0a 17 73 ?? 00 00 0a 25 02 16 02 8e 69 6f ?? 00 00 0a 6f ?? 00 00 0a 06 28 ?? 00 00 06 00 2a}  //weight: 10, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_BAB_2147935403_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.BAB!MTB"
        threat_id = "2147935403"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {00 06 07 02 07 91 03 07 03 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 61 d2 9c 00 07 17 58 0b 07 02 8e 69 fe 04 0d 09 2d da}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_NIT_2147935436_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.NIT!MTB"
        threat_id = "2147935436"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {73 3b 00 00 0a 20 e8 03 00 00 20 88 13 00 00 6f 3c 00 00 0a 28 21 00 00 0a 7e 0f 00 00 04 2d 0a 28 1e 00 00 06 28 18 00 00 06 7e 16 00 00 04 6f 3d 00 00 0a 26 17 2d c8}  //weight: 2, accuracy: High
        $x_1_2 = "AES_Decryptor" ascii //weight: 1
        $x_1_3 = "Antivirus" ascii //weight: 1
        $x_1_4 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_DB_2147935494_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.DB!MTB"
        threat_id = "2147935494"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {08 09 06 09 91 07 09 07 8e 69 5d 91 61 d2 9c 09 17 58 0d 09 06 8e 69 32 e7 28 12 00 00 0a}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_DC_2147935495_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.DC!MTB"
        threat_id = "2147935495"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {5d d2 61 d2 52 08 11 04 06 11 04 91 11 04 1f 12 5a 20 00 01 00 00 5d 59 11 05 61 d2 9c 11 04 17 58 13 04 11 04 06 8e 69 32 b8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SWA_2147935633_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SWA!MTB"
        threat_id = "2147935633"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {02 74 10 00 00 01 6f 6e 00 00 0a 6f 6f 00 00 0a 6f 6a 00 00 0a 72 22 03 00 70 72 a4 01 00 70 6f 70 00 00 0a 28 6d 00 00 0a 39 2a 00 00 00 02 74 10 00 00 01 6f 6e 00 00 0a 6f 6f 00 00 0a 6f 6a 00 00 0a 72 22 03 00 70 72 a4 01 00 70 6f 70 00 00 0a 0a dd 6f 00 00 00}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AWO_2147935662_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AWO!MTB"
        threat_id = "2147935662"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {0b 07 16 28 ?? 00 00 0a 8c 55 00 00 01 a2 07 17 28 ?? 00 00 0a a2 07 18 28 ?? 00 00 0a a2 07 19 28 ?? 00 00 0a a2 07 1a 28}  //weight: 3, accuracy: Low
        $x_2_2 = {2c 28 08 06 07 28 ?? 00 00 0a 16 6f ?? 00 00 0a 13 07 12 07 28 ?? 00 00 0a 6f ?? 00 00 0a 07 11 06 12 01 28 ?? 00 00 0a 2d d8}  //weight: 2, accuracy: Low
        $x_1_3 = {13 04 16 0d 2b 56 11 04 09 9a 0a 06 6f ?? 00 00 0a 13 06 16 13 05 2b 38 11 06 11 05 9a 0c 08 6f ?? 00 00 0a 72 ?? 0e 00 70 03 28 ?? 00 00 0a 6f ?? 00 00 0a 2c 14 06 6f ?? 00 00 0a 08 6f ?? 00 00 0a 6f ?? 00 00 0a 0b 2b 1d 11 05 17 d6 13 05 11 05 11 06 8e b7 32 c0}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AWM_2147935693_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AWM!MTB"
        threat_id = "2147935693"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0d 16 13 04 2b 21 06 09 8f 16 00 00 01 25 47 07 11 04 91 09 1b 5d 58 d2 61 d2 52 09 17 58 0d 11 04 17 58 08 5d 13 04 09 06 8e 69 32 d9}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

