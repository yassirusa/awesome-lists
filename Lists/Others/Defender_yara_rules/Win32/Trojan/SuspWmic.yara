rule Trojan_Win32_SuspWmic_V_2147768889_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspWmic.V"
        threat_id = "2147768889"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspWmic"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 77 00 6d 00 69 00 [0-2] 2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00}  //weight: 1, accuracy: Low
        $x_1_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 77 00 6d 00 69 00 6d 00 65 00 74 00 68 00 6f 00 64 00}  //weight: 1, accuracy: Low
        $x_1_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00}  //weight: 1, accuracy: Low
        $x_1_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 63 00 69 00 6d 00 61 00 73 00 73 00 6f 00 63 00 69 00 61 00 74 00 65 00 64 00 69 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00}  //weight: 1, accuracy: Low
        $x_1_5 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 63 00 69 00 6d 00 63 00 6c 00 61 00 73 00 73 00}  //weight: 1, accuracy: Low
        $x_1_6 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 63 00 69 00 6d 00 69 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00}  //weight: 1, accuracy: Low
        $x_1_7 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 63 00 69 00 6d 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00}  //weight: 1, accuracy: Low
        $x_1_8 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 73 00 65 00 74 00 2d 00 77 00 6d 00 69 00 69 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00}  //weight: 1, accuracy: Low
        $x_1_9 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 73 00 65 00 74 00 2d 00 63 00 69 00 6d 00 69 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00}  //weight: 1, accuracy: Low
        $x_1_10 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 63 00 69 00 6d 00 6d 00 65 00 74 00 68 00 6f 00 64 00}  //weight: 1, accuracy: Low
        $x_1_11 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 6e 00 65 00 77 00 2d 00 63 00 69 00 6d 00 69 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00}  //weight: 1, accuracy: Low
        $x_1_12 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 6e 00 65 00 77 00 2d 00 63 00 69 00 6d 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00}  //weight: 1, accuracy: Low
        $x_1_13 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 6e 00 65 00 77 00 2d 00 63 00 69 00 6d 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 6f 00 70 00 74 00 69 00 6f 00 6e 00}  //weight: 1, accuracy: Low
        $x_1_14 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 2d 00 63 00 69 00 6d 00 69 00 6e 00 64 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 65 00 76 00 65 00 6e 00 74 00}  //weight: 1, accuracy: Low
        $x_1_15 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 2d 00 77 00 6d 00 69 00 65 00 76 00 65 00 6e 00 74 00}  //weight: 1, accuracy: Low
        $x_1_16 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 72 00 65 00 6d 00 6f 00 76 00 65 00 2d 00 63 00 69 00 6d 00 69 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00}  //weight: 1, accuracy: Low
        $x_1_17 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 72 00 65 00 6d 00 6f 00 76 00 65 00 2d 00 63 00 69 00 6d 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00}  //weight: 1, accuracy: Low
        $x_1_18 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 [0-16] 2d 00 63 00 6c 00 61 00 73 00 73 00}  //weight: 1, accuracy: Low
        $x_1_19 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 [0-16] 2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00 [0-2] 2d 00 71 00 75 00 65 00 72 00 79 00 [0-16] 22 00 73 00 65 00 6c 00 65 00 63 00 74 00 [0-2] 2a 00 [0-2] 66 00 72 00 6f 00 6d 00 [0-2] 77 00 69 00 6e 00 33 00 32 00 5f 00}  //weight: 1, accuracy: Low
        $x_1_20 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 [0-16] 2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 72 00 6f 00 6f 00 74 00 5c 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 63 00 65 00 6e 00 74 00 65 00 72 00 32 00 [0-2] 2d 00 71 00 75 00 65 00 72 00 79 00 [0-16] 22 00 73 00 65 00 6c 00 65 00 63 00 74 00 [0-2] 2a 00 [0-2] 66 00 72 00 6f 00 6d 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_SuspWmic_Z_2147768890_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspWmic.Z"
        threat_id = "2147768890"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspWmic"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = "get-wmiobject " wide //weight: 2
        $x_2_2 = "gwmi " wide //weight: 2
        $x_1_3 = {2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 [0-48] 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00}  //weight: 1, accuracy: Low
        $x_1_4 = {2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 [0-48] 72 00 6f 00 6f 00 74 00 5c 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 63 00 65 00 6e 00 74 00 65 00 72 00}  //weight: 1, accuracy: Low
        $x_1_5 = {2d 00 71 00 75 00 65 00 72 00 79 00 [0-48] 73 00 65 00 6c 00 65 00 63 00 74 00 [0-48] 66 00 72 00 6f 00 6d 00 [0-48] 77 00 69 00 6e 00 33 00 32 00 5f 00}  //weight: 1, accuracy: Low
        $x_1_6 = {2d 00 71 00 75 00 65 00 72 00 79 00 [0-48] 73 00 65 00 6c 00 65 00 63 00 74 00 [0-48] 2a 00 [0-48] 66 00 72 00 6f 00 6d 00}  //weight: 1, accuracy: Low
        $n_10_7 = "ltsvc\\ps.exe" wide //weight: -10
        $n_10_8 = ").licensingtype" wide //weight: -10
    condition:
        (filesize < 20MB) and
        (not (any of ($n*))) and
        (
            ((4 of ($x_1_*))) or
            ((1 of ($x_2_*) and 2 of ($x_1_*))) or
            ((2 of ($x_2_*))) or
            (all of ($x*))
        )
}

