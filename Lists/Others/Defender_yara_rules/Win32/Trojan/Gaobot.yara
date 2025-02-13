rule Trojan_Win32_Gaobot_2147555596_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Gaobot"
        threat_id = "2147555596"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Gaobot"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "theago@gmx.net" ascii //weight: 1
        $x_1_2 = "penis32.exe" ascii //weight: 1
        $x_1_3 = "irc.server" ascii //weight: 1
        $x_1_4 = "irc.reconnect" ascii //weight: 1
        $x_1_5 = "irc.raw" ascii //weight: 1
        $x_1_6 = "irc.quit" ascii //weight: 1
        $x_1_7 = "irc.privmsg" ascii //weight: 1
        $x_1_8 = "irc.part" ascii //weight: 1
        $x_1_9 = "irc.netinfo" ascii //weight: 1
        $x_1_10 = "irc.mode" ascii //weight: 1
        $x_1_11 = "irc.join" ascii //weight: 1
        $x_1_12 = "irc.gethost" ascii //weight: 1
        $x_1_13 = "irc.getedu" ascii //weight: 1
        $x_1_14 = "irc.action" ascii //weight: 1
        $x_1_15 = "irc.disconnect" ascii //weight: 1
        $x_1_16 = "bot.command" ascii //weight: 1
        $x_1_17 = "bot.unsecure" ascii //weight: 1
        $x_1_18 = "bot.flushdns" ascii //weight: 1
        $x_1_19 = "bot.quit" ascii //weight: 1
        $x_1_20 = "bot.highspeed" ascii //weight: 1
        $x_1_21 = "bot.longuptime" ascii //weight: 1
        $x_1_22 = "bot.sysinfo" ascii //weight: 1
        $x_1_23 = "bot.status" ascii //weight: 1
        $x_1_24 = "bot.rndnick" ascii //weight: 1
        $x_1_25 = "bot.removeallbut" ascii //weight: 1
        $x_1_26 = "bot.remove" ascii //weight: 1
        $x_1_27 = "bot.open" ascii //weight: 1
        $x_1_28 = "bot.nick" ascii //weight: 1
        $x_1_29 = "bot.id" ascii //weight: 1
        $x_1_30 = "bot.execute" ascii //weight: 1
        $x_1_31 = "bot.dns" ascii //weight: 1
        $x_1_32 = "bot.die" ascii //weight: 1
        $x_1_33 = "bot.about" ascii //weight: 1
        $x_1_34 = "inst_polymorph" ascii //weight: 1
        $x_1_35 = "vuln_channel" ascii //weight: 1
        $x_1_36 = "sniffer_channel" ascii //weight: 1
        $x_1_37 = "sniffer_enabled" ascii //weight: 1
        $x_1_38 = "spam_aol_enabled" ascii //weight: 1
        $x_1_39 = "spam_aol_channel" ascii //weight: 1
        $x_1_40 = "scaninfo_level" ascii //weight: 1
        $x_1_41 = "scaninfo_chan" ascii //weight: 1
        $x_1_42 = "cdkey_windows" ascii //weight: 1
        $x_1_43 = "identd_enabled" ascii //weight: 1
        $x_1_44 = "redir_maxthreads" ascii //weight: 1
        $x_1_45 = "ddos_maxthreads" ascii //weight: 1
        $x_1_46 = "scan_maxsockets" ascii //weight: 1
        $x_1_47 = "scan_maxthreads" ascii //weight: 1
        $x_1_48 = "as_service_name" ascii //weight: 1
        $x_1_49 = "as_service" ascii //weight: 1
        $x_1_50 = "as_enabled" ascii //weight: 1
        $x_1_51 = "as_valname" ascii //weight: 1
        $x_1_52 = "do_stealth" ascii //weight: 1
        $x_1_53 = "do_avkill" ascii //weight: 1
        $x_1_54 = "do_speedtest" ascii //weight: 1
        $x_1_55 = "bot_topiccmd" ascii //weight: 1
        $x_1_56 = "bot_meltserver" ascii //weight: 1
        $x_1_57 = "bot_randnick" ascii //weight: 1
        $x_1_58 = "bot_compnick" ascii //weight: 1
        $x_1_59 = "bot_seclogin" ascii //weight: 1
        $x_1_60 = "bot_timeout" ascii //weight: 1
        $x_1_61 = "bot_prefix" ascii //weight: 1
        $x_1_62 = "bot_id" ascii //weight: 1
        $x_1_63 = "bot_filename" ascii //weight: 1
        $x_1_64 = "bot_version" ascii //weight: 1
        $x_1_65 = "si_nick" ascii //weight: 1
        $x_1_66 = "si_usessl" ascii //weight: 1
        $x_1_67 = "si_servpass" ascii //weight: 1
        $x_1_68 = "si_server" ascii //weight: 1
        $x_1_69 = "si_port" ascii //weight: 1
        $x_1_70 = "si_nickprefix" ascii //weight: 1
        $x_1_71 = "si_mainchan" ascii //weight: 1
        $x_1_72 = "si_chanpass" ascii //weight: 1
        $x_1_73 = "bot_ftrans_port_ftp" ascii //weight: 1
        $x_1_74 = "bot_ftrans_port" ascii //weight: 1
        $x_1_75 = "bot.repeat" ascii //weight: 1
        $x_1_76 = "shell.disable" ascii //weight: 1
        $x_1_77 = "shell.enable" ascii //weight: 1
        $x_1_78 = "shell.handler" ascii //weight: 1
        $x_1_79 = "commands.list" ascii //weight: 1
        $x_1_80 = "scan.clearnetranges" ascii //weight: 1
        $x_1_81 = "bot.secure" ascii //weight: 1
        $x_1_82 = "scan.addnetrange" ascii //weight: 1
        $x_1_83 = "server5.usessl" ascii //weight: 1
        $x_1_84 = "server5.servpass" ascii //weight: 1
        $x_1_85 = "server5.server" ascii //weight: 1
        $x_1_86 = "server5.port" ascii //weight: 1
        $x_1_87 = "server5.nickprefix" ascii //weight: 1
        $x_1_88 = "server5.mainchan" ascii //weight: 1
        $x_1_89 = "server5.chanpass" ascii //weight: 1
        $x_1_90 = "server4.usessl" ascii //weight: 1
        $x_1_91 = "server4.servpass" ascii //weight: 1
        $x_1_92 = "server4.server" ascii //weight: 1
        $x_1_93 = "server4.port" ascii //weight: 1
        $x_1_94 = "server4.nickprefix" ascii //weight: 1
        $x_1_95 = "server4.mainchan" ascii //weight: 1
        $x_1_96 = "server4.chanpass" ascii //weight: 1
        $x_1_97 = "server3.usessl" ascii //weight: 1
        $x_1_98 = "server3.servpass" ascii //weight: 1
        $x_1_99 = "server3.server" ascii //weight: 1
        $x_1_100 = "server3.port" ascii //weight: 1
        $x_1_101 = "server3.nickprefix" ascii //weight: 1
        $x_1_102 = "server3.mainchan" ascii //weight: 1
        $x_1_103 = "server3.chanpass" ascii //weight: 1
        $x_1_104 = "server2.usessl" ascii //weight: 1
        $x_1_105 = "server2.servpass" ascii //weight: 1
        $x_1_106 = "server2.server" ascii //weight: 1
        $x_1_107 = "server2.port" ascii //weight: 1
        $x_1_108 = "server2.nickprefix" ascii //weight: 1
        $x_1_109 = "server2.mainchan" ascii //weight: 1
        $x_1_110 = "server2.chanpass" ascii //weight: 1
        $x_1_111 = "server1.usessl" ascii //weight: 1
        $x_1_112 = "server1.servpass" ascii //weight: 1
        $x_1_113 = "server1.server" ascii //weight: 1
        $x_1_114 = "server1.port" ascii //weight: 1
        $x_1_115 = "server1.nickprefix" ascii //weight: 1
        $x_1_116 = "server1.mainchan" ascii //weight: 1
        $x_1_117 = "server1.chanpass" ascii //weight: 1
        $x_1_118 = "server0.usessl" ascii //weight: 1
        $x_1_119 = "server0.servpass" ascii //weight: 1
        $x_1_120 = "server0.server" ascii //weight: 1
        $x_1_121 = "server0.port" ascii //weight: 1
        $x_1_122 = "server0.nickprefix" ascii //weight: 1
        $x_1_123 = "server0.mainchan" ascii //weight: 1
        $x_1_124 = "server0.chanpass" ascii //weight: 1
        $x_1_125 = "user0.identdmask" ascii //weight: 1
        $x_1_126 = "user0.hostmask" ascii //weight: 1
        $x_1_127 = "user0.password" ascii //weight: 1
        $x_1_128 = "user0.username" ascii //weight: 1
        $x_1_129 = "plugin.load" ascii //weight: 1
        $x_1_130 = "cvar.saveconfig" ascii //weight: 1
        $x_1_131 = "cvar.loadconfig" ascii //weight: 1
        $x_1_132 = "cvar.set" ascii //weight: 1
        $x_1_133 = "cvar.get" ascii //weight: 1
        $x_1_134 = "cvar.list" ascii //weight: 1
        $x_1_135 = "inst.svcdel" ascii //weight: 1
        $x_1_136 = "inst.svcadd" ascii //weight: 1
        $x_1_137 = "inst.asdel" ascii //weight: 1
        $x_1_138 = "inst.asadd" ascii //weight: 1
        $x_1_139 = "file.del" ascii //weight: 1
        $x_1_140 = "logic.ifspeed" ascii //weight: 1
        $x_1_141 = "logic.ifuptime" ascii //weight: 1
        $x_1_142 = "mac.logout" ascii //weight: 1
        $x_1_143 = "ftp.update" ascii //weight: 1
        $x_1_144 = "ftp.execute" ascii //weight: 1
        $x_1_145 = "ftp.download" ascii //weight: 1
        $x_1_146 = "http.visit" ascii //weight: 1
        $x_1_147 = "http.update" ascii //weight: 1
        $x_1_148 = "http.execute" ascii //weight: 1
        $x_1_149 = "http.download" ascii //weight: 1
        $x_1_150 = "rsl.logoff" ascii //weight: 1
        $x_1_151 = "rsl.shutdown" ascii //weight: 1
        $x_1_152 = "rsl.reboot" ascii //weight: 1
        $x_1_153 = "pctrl.killpid" ascii //weight: 1
        $x_1_154 = "pctrl.killsvc" ascii //weight: 1
        $x_1_155 = "pctrl.listsvc" ascii //weight: 1
        $x_1_156 = "pctrl.kill" ascii //weight: 1
        $x_1_157 = "pctrl.list" ascii //weight: 1
        $x_1_158 = "http.speedtest" ascii //weight: 1
        $x_1_159 = "scan.stats" ascii //weight: 1
        $x_1_160 = "scan.stop" ascii //weight: 1
        $x_1_161 = "scan.start" ascii //weight: 1
        $x_1_162 = "scan.stopall" ascii //weight: 1
        $x_1_163 = "scan.startall" ascii //weight: 1
        $x_1_164 = "scan.disable" ascii //weight: 1
        $x_1_165 = "scan.enable" ascii //weight: 1
        $x_1_166 = "scan.resetnetranges" ascii //weight: 1
        $x_1_167 = "scan.listnetranges" ascii //weight: 1
        $x_1_168 = "scan.delnetrange" ascii //weight: 1
        $x_1_169 = "ddos.targa3" ascii //weight: 1
        $x_1_170 = "ddos.phatwonk" ascii //weight: 1
        $x_1_171 = "ddos.phaticmp" ascii //weight: 1
        $x_1_172 = "ddos.phatsyn" ascii //weight: 1
        $x_1_173 = "ddos.stop" ascii //weight: 1
        $x_1_174 = "ddos.httpflood" ascii //weight: 1
        $x_1_175 = "ddos.synflood" ascii //weight: 1
        $x_1_176 = "ddos.udpflood" ascii //weight: 1
        $x_1_177 = "redirect.stop" ascii //weight: 1
        $x_1_178 = "redirect.socks5" ascii //weight: 1
        $x_1_179 = "redirect.socks" ascii //weight: 1
        $x_1_180 = "redirect.https" ascii //weight: 1
        $x_1_181 = "redirect.http" ascii //weight: 1
        $x_1_182 = "redirect.gre" ascii //weight: 1
        $x_1_183 = "redirect.tcp" ascii //weight: 1
        $x_1_184 = "harvest.aol" ascii //weight: 1
        $x_1_185 = "harvest.cdkeys" ascii //weight: 1
        $x_1_186 = "harvest.emailshttp" ascii //weight: 1
        $x_1_187 = "harvest.emails" ascii //weight: 1
        $x_1_188 = "harvest.windowskeys" ascii //weight: 1
        $x_1_189 = "harvest.registry" ascii //weight: 1
        $x_1_190 = "scan.dcom" ascii //weight: 1
        $x_1_191 = "scan.locator" ascii //weight: 1
        $x_1_192 = "scan.netbios" ascii //weight: 1
        $x_1_193 = "scan.webdav" ascii //weight: 1
        $x_1_194 = "cdkey.get" ascii //weight: 1
        $x_1_195 = "ddos.pingflood" ascii //weight: 1
        $x_1_196 = "si_server_0.chanpass" ascii //weight: 1
        $x_1_197 = "si_server_0.mainchan" ascii //weight: 1
        $x_1_198 = "si_server_0.nickprefix" ascii //weight: 1
        $x_1_199 = "si_server_0.port" ascii //weight: 1
        $x_1_200 = "si_server_0.server" ascii //weight: 1
        $x_1_201 = "si_server_0.servpass" ascii //weight: 1
        $x_1_202 = "si_server_0.use_ssl" ascii //weight: 1
        $x_1_203 = "si_server_root.chanpass" ascii //weight: 1
        $x_1_204 = "si_server_root.mainchan" ascii //weight: 1
        $x_1_205 = "si_server_root.nickprefix" ascii //weight: 1
        $x_1_206 = "si_server_root.port" ascii //weight: 1
        $x_1_207 = "si_server_root.server" ascii //weight: 1
        $x_1_208 = "si_server_root.servpass" ascii //weight: 1
        $x_1_209 = "si_server_root.use_ssl" ascii //weight: 1
        $x_3_210 = ":PhatBNC" ascii //weight: 3
    condition:
        (filesize < 20MB) and
        (
            ((10 of ($x_1_*))) or
            ((1 of ($x_3_*) and 7 of ($x_1_*))) or
            (all of ($x*))
        )
}

