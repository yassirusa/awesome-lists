rule Trojan_Win64_ShellCodeRunner_ASR_2147907975_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.ASR!MTB"
        threat_id = "2147907975"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {49 8b c2 0f b7 00 41 8b c8 c1 c9 08 41 ff c1 03 c8 41 8b c1 49 03 c2 44 33 c1 44 38 28}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_NS_2147914182_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.NS!MTB"
        threat_id = "2147914182"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {48 8b 05 7a 45 45 00 48 89 04 24 48 c7 44 24 08 ?? ?? ?? ?? 48 8b 44 24 30 48 89 44 24 ?? 48 c7 44 24 18 ?? ?? ?? ?? 48 c7 44 24 20}  //weight: 3, accuracy: Low
        $x_3_2 = {45 0f 57 ff 4c 8b 35 d0 5b 4e ?? 65 4d 8b 36 4d 8b 36 48 8b 44 24 ?? 48 8b 6c 24 38}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_NS_2147914182_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.NS!MTB"
        threat_id = "2147914182"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {40 32 f6 40 88 74 24 ?? e8 fe 03 00 00 8a d8 8b 0d 96 1a 02 00 83 f9 01 0f 84 23 01 00 00 85 c9 75 4a c7 05 7f 1a 02 00 ?? ?? ?? ?? 48 8d 15 e8 59 01 00 48 8d 0d a9 59 01 00}  //weight: 2, accuracy: Low
        $x_3_2 = {48 8d 05 d2 13 02 00 89 74 24 68 48 89 45 80 48 8d 05 b3 13 02 00 48 89 45 88 c7 44 24 78 ?? ?? ?? ?? e8 a2 f9 ff ff}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_AB_2147921615_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.AB!MTB"
        threat_id = "2147921615"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {71 64 59 20 ef cf 79 da b8 1a ee 34 84 e7 33 2a 98 1c 78 94 73 50 62 dd 43 44 44 3a 90 63 7e 12 6f 4d 87 8b 51 32 2b db 8a 2d 8e 21 23 ef d6 7e af 07 5e 87 7f f5 48 65 18 12 b0 1e 6e 86 e0 8c 77 e0 55 8c c5 07 45 53 8d d5 8d 37 ce b5 72 54 69 98 4c e7 ac 49 ed 35 5b 17 e9 09 7d bc 56 47 c2 17 ce d2 5a 4f d0 9b c8 5f 25 91 09 b8 13 27 7e e4 82 cb 4d 4c 75 58 74 c2 82 df 7f 98 dd 84 57 f5 52 a7 ba bc 31 cf 67 25 64 28 9c 0a}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_AMG_2147922441_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.AMG!MTB"
        threat_id = "2147922441"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {ff d0 89 85 ?? ?? 00 00 8b 85 00 00 00 41 89 c0 ba 00 00 00 00 b9 ff ff ?? ?? 48 8b 05 ?? ?? ?? ?? ff d0 48 89 85 ?? ?? 00 00 48 8b 85 ?? ?? 00 00 c7 44 24 20 40 00 00 00 41 b9 00 10 00 00 41 b8 17 00 00 00 ba 00 00 00 00 48 89 c1 48 8b 05 ?? ?? ?? ?? ff d0}  //weight: 4, accuracy: Low
        $x_1_2 = "WPCThdExRsFSngObjQIfpGD" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_VG_2147924831_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.VG!MTB"
        threat_id = "2147924831"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Private Organization1" ascii //weight: 1
        $x_1_2 = "9113102459540314XR1" ascii //weight: 1
        $x_1_3 = "Langfang1503" ascii //weight: 1
        $x_1_4 = "Langfang Alkem Material Technology Co., Ltd.0" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_ZZ_2147925131_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.ZZ!MTB"
        threat_id = "2147925131"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 89 c8 49 c1 e9 04 49 f7 e2 4c 89 c8 48 89 d3 49 89 d2 49 f7 e3 48 89 f8 48 c1 eb 0b 48 c1 ea 02 48 6b d2 64 48 29 d0 48 81 f9 3f 42 0f 00}  //weight: 1, accuracy: High
        $x_1_2 = {49 89 dc 4c 8b bc 24 b8 00 00 00 49 31 cc 4c 8b 8c 24 90 00 00 00 4c 89 e0 4c 89 de 4d 89 da 4c 31 da 4c 8b b4 24 98 00 00 00 4c 89 df 48 31 de 48 31 d0 4c 8b 84 24 90 00 00 00 49 31 ca 4d 31 ef 48 89 44 24 28 48 33 84 24 a8 00 00 00 4d 31 f9 4d 31 ce 4c 31 cb 4c 31 cf 48 89 5c 24 20 4c 89 d3 4d 31 f2 48 89 7c 24 30 48 89 cf 48 8b 4c 24 28 49 31 c5 4c 89 74 24 70 4c 8b b4 24 90 00 00 00 48 31 c7 48 89 f0 49 31 f8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_GB_2147925374_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.GB!MTB"
        threat_id = "2147925374"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "main.PEB" ascii //weight: 1
        $x_1_2 = "main.IMAGE_DOS_HEADER" ascii //weight: 1
        $x_1_3 = "main.IMAGE_FILE_HEADER" ascii //weight: 1
        $x_1_4 = "main.IMAGE_OPTIONAL_HEADER32" ascii //weight: 1
        $x_1_5 = "main.IMAGE_OPTIONAL_HEADER64" ascii //weight: 1
        $x_1_6 = "main.PROCESS_BASIC_INFORMATION" ascii //weight: 1
        $x_1_7 = "shellcode" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (6 of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_GPKL_2147927073_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.GPKL!MTB"
        threat_id = "2147927073"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {55 80 74 24 ?? 57 80 74 24 ?? 59 80 74 24 ?? 5b 80 74 24 ?? 5d 80 74 24 ?? 5f 80 74 24}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_GC_2147929369_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.GC!MTB"
        threat_id = "2147929369"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "main.AesDecrypt" ascii //weight: 1
        $x_1_2 = "main.HexStrToBytes" ascii //weight: 1
        $x_1_3 = "main.isNonChinese" ascii //weight: 1
        $x_1_4 = "main.isNonChinese.deferwrap1" ascii //weight: 1
        $x_1_5 = "main.isPythonInCDrive" ascii //weight: 1
        $x_1_6 = "main.main" ascii //weight: 1
        $x_1_7 = "main.isCPULow" ascii //weight: 1
        $x_1_8 = "main.HideConsoleWindow" ascii //weight: 1
        $x_1_9 = "main.HexParseKey" ascii //weight: 1
        $x_1_10 = "/ShellCode/ShellCode" ascii //weight: 1
        $x_1_11 = "LazyDLL" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ShellCodeRunner_RPH_2147931390_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ShellCodeRunner.RPH!MTB"
        threat_id = "2147931390"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ShellCodeRunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "\\maldev\\!code-section\\!Shellcode\\Shellcode-test\\x64\\Release\\Shellcode-test.pdb" ascii //weight: 10
        $x_10_2 = "\\maldev\\!code-section\\!Shellcode\\Shellcode-obfuscated\\x64\\Release\\Shellcode-obfuscated.pdb" ascii //weight: 10
        $x_10_3 = "\\maldev\\code-section\\fud-cmd\\x64\\Release\\fud-cmd.pdb" ascii //weight: 10
        $x_10_4 = "\\maldev\\!code-section\\fud-cmd\\x64\\Release\\fud-cmd.pdb" ascii //weight: 10
        $x_1_5 = "curl_easy_perform cannot be executed if the CURL handle is used in a MultiPerform." ascii //weight: 1
        $x_1_6 = {68 74 74 70 73 3a 2f 2f [0-144] 2e 74 78 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 2 of ($x_1_*))) or
            ((2 of ($x_10_*))) or
            (all of ($x*))
        )
}

