rule Misleading_Linux_MechBot_DS_301204_0
{
    meta:
        author = "defender2yara"
        detection_name = "Misleading:Linux/MechBot.DS!MTB"
        threat_id = "301204"
        type = "Misleading"
        platform = "Linux: Linux platform"
        family = "MechBot"
        severity = "High"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_ELFHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "SPYLIST" ascii //weight: 1
        $x_1_2 = "init: EnergyMech running..." ascii //weight: 1
        $x_1_3 = "No bots in the configfile" ascii //weight: 1
        $x_1_4 = "run ./genuser %s" ascii //weight: 1
        $x_1_5 = "spymsg" ascii //weight: 1
        $x_1_6 = "Deleting bot %s" ascii //weight: 1
        $x_1_7 = "process_incoming_chat" ascii //weight: 1
        $x_1_8 = "check_all_steal" ascii //weight: 1
        $x_1_9 = "send_spy" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

