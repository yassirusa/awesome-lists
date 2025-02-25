rule Trojan_Win32_BadJoke_PA_2147744904_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/BadJoke.PA!MTB"
        threat_id = "2147744904"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "BadJoke"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "18"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "/C del %systemroot% /F /S /Q" ascii //weight: 5
        $x_5_2 = "ogo pososi huy" ascii //weight: 5
        $x_2_3 = "reg add HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System /v DisableTaskMgr /t REG_DWORD /d 1 /f" ascii //weight: 2
        $x_2_4 = "reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem /v DisableTaskMgr /t REG_DWORD /d 1 /f" ascii //weight: 2
        $x_2_5 = "test\\imlox\\imlox\\Release\\imlox.pdb" ascii //weight: 2
        $x_2_6 = "schtasks /create /tn \"WindowsUpdatev1\" /tr \"C:\\myapp.exe\" /sc onlogon" ascii //weight: 2
        $x_2_7 = "open \"C:\\TEMP\\some.mp3\" type mpegvideo alias errormsg" ascii //weight: 2
        $x_2_8 = "open \"C:\\TEMP\\some.mp3\" type mpegvideo alias justsnd" ascii //weight: 2
        $x_1_9 = "play errormsg repeat" ascii //weight: 1
        $x_1_10 = "play justsnd repeat" ascii //weight: 1
        $x_1_11 = "some.png" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 5 of ($x_2_*) and 3 of ($x_1_*))) or
            ((1 of ($x_5_*) and 6 of ($x_2_*) and 1 of ($x_1_*))) or
            ((2 of ($x_5_*) and 3 of ($x_2_*) and 2 of ($x_1_*))) or
            ((2 of ($x_5_*) and 4 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_BadJoke_PA_2147744904_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/BadJoke.PA!MTB"
        threat_id = "2147744904"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "BadJoke"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "vssadmin delete shadows /all /quiet" ascii //weight: 1
        $x_1_2 = "Congratulations.txt" ascii //weight: 1
        $x_1_3 = "excuse me mate you installed malware on the system" ascii //weight: 1
        $x_1_4 = "Yeah Yeah its 420 time" wide //weight: 1
        $x_1_5 = "#MAKEMALWAREGREATAGAIN" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

rule Trojan_Win32_BadJoke_AM_2147817632_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/BadJoke.AM!MTB"
        threat_id = "2147817632"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "BadJoke"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "SeShutdownPrivilege" ascii //weight: 1
        $x_1_2 = "DelNodeRunDLL32" ascii //weight: 1
        $x_1_3 = "POSTRUNPROGRAM" ascii //weight: 1
        $x_1_4 = "Lol get epicly reked/pwned by my epic VBScript!" ascii //weight: 1
        $x_1_5 = "I copied FlyTech's homework!" ascii //weight: 1
        $x_1_6 = "Get spamed" ascii //weight: 1
        $x_1_7 = "start box.vbs" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_BadJoke_RDA_2147845700_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/BadJoke.RDA!MTB"
        threat_id = "2147845700"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "BadJoke"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {c1 e0 0d 33 c2 8b c8 c1 e9 11 33 c8 8b f9 c1 e7 05 33 f9 8b c7 c1 e0 0d 33 c7 8b c8 c1 e9 11 33 c8}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_BadJoke_RDB_2147851744_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/BadJoke.RDB!MTB"
        threat_id = "2147851744"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "BadJoke"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8a 0a 8b 55 ec 8a 54 15 cf 31 ca 88 10}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_BadJoke_GH_2147905025_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/BadJoke.GH!MTB"
        threat_id = "2147905025"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "BadJoke"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "DestructSafety.pdb" ascii //weight: 1
        $x_1_2 = "The software you just executed is considered malware." ascii //weight: 1
        $x_1_3 = "This malware will harm your computer and makes it unusable." ascii //weight: 1
        $x_1_4 = "If you are seeing this message without knowing what you just executed," ascii //weight: 1
        $x_1_5 = "press Yes to start it. Do you want to execute this malware, resulting in an unusable machine?" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_BadJoke_EARZ_2147934439_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/BadJoke.EARZ!MTB"
        threat_id = "2147934439"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "BadJoke"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {8b d0 8b c8 c1 e9 08 0a c8 c1 ea 09 0a d0 02 d1 8b c8 c1 e9 07 0a c8 02 d1 8b c8 c1 e9 06 22 c8 02 d1 88 94 05 f8 59 f1 ff 40 3d 00 a6 0e 00}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

