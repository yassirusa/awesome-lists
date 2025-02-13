rule Trojan_AutoIt_Rescom_2147740934_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AutoIt/Rescom!MTB"
        threat_id = "2147740934"
        type = "Trojan"
        platform = "AutoIt: AutoIT scripts"
        family = "Rescom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_AUTOITHSTR_EXT"
        threshold = "9"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {4c 00 4f 00 43 00 41 00 4c 00 20 00 24 00 [0-16] 20 00 3d 00 20 00 22 00 41 00 42 00 43 00 44 00 45 00 46 00 47 00 48 00 49 00 4a 00 4b 00 4c 00 4d 00 4e 00 4f 00 50 00 51 00 52 00 53 00 54 00 55 00 56 00 57 00 58 00 59 00 5a 00 61 00 62 00 63 00 64 00 65 00 66 00 67 00 68 00 69 00 6a 00 6b 00 6c 00 6d 00 6e 00 6f 00 70 00 71 00 72 00 73 00 74 00 75 00 76 00 77 00 78 00 79 00 7a 00 30 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 22 00}  //weight: 1, accuracy: Low
        $x_1_2 = {4c 4f 43 41 4c 20 24 [0-16] 20 3d 20 22 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f 70 71 72 73 74 75 76 77 78 79 7a 30 31 32 33 34 35 36 37 38 39 22}  //weight: 1, accuracy: Low
        $x_1_3 = {4c 00 4f 00 43 00 41 00 4c 00 20 00 24 00 [0-16] 20 00 3d 00 20 00 53 00 54 00 52 00 49 00 4e 00 47 00 53 00 50 00 4c 00 49 00 54 00 20 00 28 00 20 00 24 00 [0-16] 20 00 2c 00 20 00 22 00 22 00 20 00 29 00}  //weight: 1, accuracy: Low
        $x_1_4 = {4c 4f 43 41 4c 20 24 [0-16] 20 3d 20 53 54 52 49 4e 47 53 50 4c 49 54 20 28 20 24 [0-16] 20 2c 20 22 22 20 29}  //weight: 1, accuracy: Low
        $x_1_5 = {46 00 4f 00 52 00 20 00 24 00 [0-3] 20 00 3d 00 20 00 22 00 31 00 22 00 20 00 54 00 4f 00 20 00 55 00 42 00 4f 00 55 00 4e 00 44 00 20 00 28 00 20 00 24 00 [0-32] 20 00 29 00 20 00 2d 00 20 00 22 00 31 00 22 00}  //weight: 1, accuracy: Low
        $x_1_6 = {46 4f 52 20 24 [0-3] 20 3d 20 22 31 22 20 54 4f 20 55 42 4f 55 4e 44 20 28 20 24 [0-32] 20 29 20 2d 20 22 31 22}  //weight: 1, accuracy: Low
        $x_1_7 = {26 00 3d 00 20 00 24 00 [0-16] 20 00 5b 00 20 00 24 00 [0-32] 20 00 5b 00 20 00 24 00 [0-16] 20 00 5d 00 20 00 5d 00}  //weight: 1, accuracy: Low
        $x_1_8 = {26 3d 20 24 [0-16] 20 5b 20 24 [0-32] 20 5b 20 24 [0-16] 20 5d 20 5d}  //weight: 1, accuracy: Low
        $x_1_9 = "NEXT" ascii //weight: 1
        $x_1_10 = "RETURN $" ascii //weight: 1
        $x_1_11 = "ENDFUNC" ascii //weight: 1
        $x_1_12 = {4c 00 4f 00 43 00 41 00 4c 00 20 00 24 00 [0-21] 20 00 3d 00 20 00 40 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 44 00 49 00 52 00 20 00 26 00 20 00 22 00 5c 00 52 00 41 00 56 00 42 00 67 00 36 00 34 00 22 00}  //weight: 1, accuracy: Low
        $x_1_13 = {4c 4f 43 41 4c 20 24 [0-21] 20 3d 20 40 41 50 50 44 41 54 41 44 49 52 20 26 20 22 5c 52 41 56 42 67 36 34 22}  //weight: 1, accuracy: Low
        $x_1_14 = {45 00 58 00 45 00 43 00 55 00 54 00 45 00 20 00 28 00 20 00 22 00 52 00 75 00 6e 00 50 00 45 00 28 00 40 00 53 00 79 00 73 00 74 00 65 00 6d 00 44 00 69 00 72 00 20 00 26 00 20 00 27 00 5c 00 64 00 6c 00 6c 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 27 00 2c 00 24 00 [0-64] 2c 00 46 00 61 00 6c 00 73 00 65 00 2c 00 46 00 61 00 6c 00 73 00 65 00 29 00 22 00 20 00 29 00}  //weight: 1, accuracy: Low
        $x_1_15 = {45 58 45 43 55 54 45 20 28 20 22 52 75 6e 50 45 28 40 53 79 73 74 65 6d 44 69 72 20 26 20 27 5c 64 6c 6c 68 6f 73 74 2e 65 78 65 27 2c 24 [0-64] 2c 46 61 6c 73 65 2c 46 61 6c 73 65 29 22 20 29}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (9 of ($x*))
}

