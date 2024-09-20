# Security lists for SOC/DFIR detections [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
![dt](https://github.com/mthcht/awesome-lists/assets/75267080/059432aa-cfe9-46d1-a611-fbb225bce66e)



## Threat Hunting:
- [ThreatHunting keywords Site](https://mthcht.github.io/ThreatHunting-Keywords/)
- [ThreatHunting keywords Lists](https://github.com/mthcht/ThreatHunting-Keywords)
- [ThreatHunting Yara rules](https://github.com/mthcht/ThreatHunting-Keywords-yara-rules)

[ThreatHunting searches](https://github.com/mthcht/Purpleteam/tree/main/Detection/Threat%20Hunting/generic)
<details>
  
  - [Windows Services Searches](https://detect.fyi/threat-hunting-suspicious-windows-service-names-2f0dceea204c)
  - [User-Agents Searches](https://mthcht.medium.com/threat-hunting-suspicious-user-agents-3dd764470bd0)
  - [DNS Over HTTPS Searches](https://mthcht.medium.com/detecting-dns-over-https-30fddb55ac78)
  - [Suspicious TLDs Searches](https://mthcht.medium.com/threat-hunting-suspicious-tlds-a742c2adbf58)
  - [HijackLibs Searches](https://mthcht.medium.com/detect-dll-hijacking-techniques-from-hijacklibs-with-splunk-c760d2e0656f)
  - [Phishing & DNSTWIST Searches](https://detect.fyi/detecting-phishing-attempts-with-dnstwist-37c426b3bbb8)
  - [Browsers extensions Searches](https://mthcht.medium.com/detecting-browser-extensions-installations-e0ac2b45c46b)
  - [C2 hiding in plain sigh](https://mthcht.medium.com/c2-hiding-in-plain-sight-7a83963b9344)
  - [HTML Smuggling artifacts](https://mthcht.medium.com/detecting-html-smuggling-phishing-attempts-15af824e60e4)
  - [PSEXEC & similar tools Searches](https://mthcht.medium.com/detecting-psexec-and-similar-tools-c812bf3dca6c)
  - [Time Slipping detection](https://mthcht.medium.com/event-log-manipulations-1-time-slipping-55bf95631c40)
  - [Suspicious Named pipes](https://detect.fyi/threat-hunting-suspicious-named-pipes-a4206e8a4bc8)

</details>

## My Detection Lists 
- 📋 Lists: https://github.com/mthcht/awesome-lists/tree/main/Lists
- 🕵️‍♂️ ThreatHunting Guides: https://mthcht.medium.com/list/threat-hunting-708624e9266f
- 🚰 Suspicious Named pipes: [suspicious_named_pipe_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_named_pipe_list.csv)
- 🌐 Suspicious TLDs (updated automatically): [[suspicious_TLDs]](https://github.com/mthcht/awesome-lists/tree/main/Lists/TLDs)
- 🌐 Suspicious ASNs (updated automatically): [[suspicious ASNs]](https://github.com/mthcht/awesome-lists/tree/main/Lists/ASNs)
- 🔧 Suspicious Windows Services: [suspicious_windows_services_names_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_windows_services_names_list.csv)
- ⏲️ Suspicious Windows Tasks: [suspicious_windows_tasks_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_windows_tasks_list.csv)
- 🚪 Suspicious destination port: [suspicious_ports_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_ports_list.csv)
- 🛡️ Suspicious Firewall rules: [suspicious_windows_firewall_rules_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_windows_firewall_rules_list.csv)
- 🆔 Suspicious User-agent: [suspicious_http_user_agents_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_http_user_agents_list.csv)
- 📇 Suspicious USB Ids: [suspicious_usb_ids_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_usb_ids_list.csv)
- 🔢 Suspicious MAC address: [suspicious_mac_address_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_mac_address_list.csv)
- 📛 Suspicious Hostname: [suspicious_hostnames_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/suspicious_hostnames_list.csv)
- 🌐 Suspicious Browser Extensions: [Browser Extensions](https://github.com/mthcht/awesome-lists/tree/main/Lists/Browser%20Extensions)
- 🧮 Metadata Executables: [executables_metadata_informations_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/Windows%20Metadata/executables_metadata_informations_list.csv)
- 🕸️ DNS over HTTPS server list: [dns_over_https_servers_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/dns_over_https_servers_list.csv)
- 📚 Hijacklibs (updated automatically): [hijacklibs_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/Hijacklibs/hijacklibs_list.csv)
- 🌐 TOR Nodes Lists (updated automatically): [[TOR]](https://github.com/mthcht/awesome-lists/tree/main/Lists/TOR)
- 🛠️ LOLDriver List (updated automatically): [loldrivers_only_hashes_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/Drivers/loldrivers_only_hashes_list.csv)
- 🛠️ Malicious Bootloader List (updated automatically): [malicious_bootloaders_only_hashes_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/Drivers/malicious_bootloaders_only_hashes_list.csv)
- 📜 Malicious SSL Certificates List (updated automatically): [ssl_certificates_malicious_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/SSL%20CERTS/ssl_certificates_malicious_list.csv)
- 🖥️ RMM detection: [[RMM]](https://github.com/mthcht/awesome-lists/tree/main/Lists/RMM)
- 👤🔑 Important Roles and groups for AD/EntraID/AWS: [[permissions]](https://github.com/mthcht/awesome-lists/tree/main/Lists/permissions)
- 💻🔒 Ransomware known file extensions: [ransomware_extensions_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/ransomware_extensions_list.csv)
- 💻🔒 Ransomware known file name ransom notes: [ransomware_notes_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/ransomware_notes_list.csv)
- 📝 Windows ASR rules: [windows_asr_rules.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/windows_asr_rules.csv)
- 🌐 DNSTWIST Lists (updated automatically): [DNSTWIST Default Domains + script](https://github.com/mthcht/awesome-lists/tree/main/Lists/DNSTWIST)
- 🌍 VPN IP address Lists (updated automatically): 
  - 🛡️ NordVPN: [nordvpn_ips_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/VPN/NordVPN/nordvpn_ips_list.csv)
  - 🛡️ ProtonVPN: [protonvpn_ip_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/VPN/ProtonVPN/protonvpn_ip_list.csv)
- 🏢 Companies IP Range Lists (updated automatically): [Default Lists + script](https://github.com/mthcht/awesome-lists/tree/main/Lists/Ranges_IP_Address_Company_List/bgp.he.net) / [Microsoft](https://github.com/mthcht/awesome-lists/tree/main/Lists/Ranges_IP_Address_Company_List/Microsoft)
- 📍  GeoIP services Lists: [ip_location_sites_list.csv](https://github.com/mthcht/awesome-lists/blob/main/Lists/GeoIP/ip_location_sites_list.csv)
- 🧬 Yara rules: [Threat Hunting yara rules](https://github.com/mthcht/ThreatHunting-Keywords-yara-rules)
- 🧬 Offensive Tools detection patterns: [offensive_tool_keywords.csv](https://raw.githubusercontent.com/mthcht/ThreatHunting-Keywords/main/offensive_tool_keyword.csv)
- 🧬 Greyware Tools detection patterns: [greyware_tool_keyword.csv](https://raw.githubusercontent.com/mthcht/ThreatHunting-Keywords/main/greyware_tool_keyword.csv)
- 🧬 AV signatures keywords: [signature_keyword.csv](https://github.com/mthcht/ThreatHunting-Keywords/blob/main/signature_keyword.csv)
- 🧬 Microsoft Defender AV signatures lists: [[Defender]](https://github.com/mthcht/awesome-lists/tree/main/Lists/AV%20signatures/Defender)
- 🧬 ClamAV signatures lists: [[ClamAV]](https://github.com/mthcht/awesome-lists/tree/main/Lists/AV%20signatures/ClamAV)  
- 🔗 Others correlation Lists: [[Others]](https://github.com/mthcht/awesome-lists/tree/main/Lists/Others)
- 📋 Lists i need to finish: [[todo]](https://github.com/mthcht/awesome-lists/tree/main/todo)

I regularly update most of these lists after each tool i analyze in my [detection keywords](https://github.com/mthcht/ThreatHunting-Keywords) project

## Other Lists

### IOC Feeds/Blacklists:

<details> 

- [ABUSE.CH BLACKLISTS](https://sslbl.abuse.ch/blacklist/)
- [Block Lists](https://github.com/blocklistproject/Lists)
- [DNS Block List](https://github.com/hagezi/dns-blocklists)
- [Phishing Block List](https://github.com/jarelllama/Scam-Blocklist)
- [C2IntelFeeds](https://github.com/drb-ra/C2IntelFeeds)
- [Volexity TI](https://github.com/volexity/threat-intel)
- [Open Source TI](https://github.com/Bert-JanP/Open-Source-Threat-Intel-Feeds)
- [C2 Tracker](https://github.com/montysecurity/C2-Tracker)
- [Unit42 IOC](https://github.com/mthcht/iocs)
- [Sekoia IOC](https://github.com/SEKOIA-IO/Community/tree/main/IOCs)
- [Unit42 Timely IOC](https://github.com/PaloAltoNetworks/Unit42-timely-threat-intel)
- [Unit42 Articles IOC](https://github.com/PaloAltoNetworks/Unit42-Threat-Intelligence-Article-Information)
- [ThreatFOX IOC](https://threatfox.abuse.ch/export/)
- [Zscaler ThreatLabz IOC](https://github.com/threatlabz/iocs)
- [Zscaler ThreatLabz Ransomware notes](https://github.com/ThreatLabz/ransomware_notes)
- [experiant.ca](https://fsrm.experiant.ca/api/v1/get])
- [Sophos lab IOC](https://github.com/sophoslabs/IoCs)
- [ESET Research IOC](https://github.com/eset/malware-ioc)
- [ExecuteMalware IOC](https://github.com/executemalware/Malware-IOCs)
- [Cisco Talos IOC](https://github.com/Cisco-Talos/IOCs)
- [Elastic Lab IOC](https://github.com/elastic/labs-releases/tree/main/indicators)
- [Blackorbid APT Report IOC](https://github.com/blackorbird/APT_REPORT)
- [AVAST IOC](https://github.com/avast/ioc)
- [DoctorWeb IOC](https://github.com/DoctorWebLtd/malware-iocs)
- [BlackLotusLab IOC](https://github.com/blacklotuslabs/IOCs)
- [prodaft IOC](https://github.com/prodaft/malware-ioc)
- [Pr0xylife DarkGate IOC](https://github.com/pr0xylife/DarkGate)
- [Pr0xylife Latrodectus IOC](https://github.com/pr0xylife/Latrodectus)
- [Pr0xylife WikiLoader IOC](https://github.com/pr0xylife/WikiLoader)
- [Pr0xylife SSLoad IOC](https://github.com/pr0xylife/SSLoad)
- [Pr0xylife Pikabot IOC](https://github.com/pr0xylife/Pikabot)
- [Pr0xylife Matanbuchus IOC](https://github.com/pr0xylife/Matanbuchus)
- [Pr0xylife QakBot IOC](https://github.com/pr0xylife/Qakbot)
- [Pr0xylife IceID IOC](https://github.com/pr0xylife/IcedID)
- [Pr0xylife Emotet IOC](https://github.com/pr0xylife/Emotet)
- [Pr0xylife BumbleBee IOC](https://github.com/pr0xylife/Bumblebee)
- [Pr0xylife Gozi IOC](https://github.com/pr0xylife/Gozi)
- [Pr0xylife NanoCore IOC](https://github.com/pr0xylife/Nanocore)
- [Pr0xylife NetWire IOC](https://github.com/pr0xylife/Netwire)
- [Pr0xylife AsyncRAT IOC](https://github.com/pr0xylife/AsyncRAT)
- [Pr0xylife Lokibot IOC](https://github.com/pr0xylife/Lokibot)
- [Pr0xylife RemcosRAT IOC](https://github.com/pr0xylife/RemcosRAT)
- [Pr0xylife nworm IOC](https://github.com/pr0xylife/nworm)
- [Pr0xylife AZORult IOC](https://github.com/pr0xylife/AZORult)
- [Pr0xylife NetSupportRAT IOC](https://github.com/pr0xylife/NetSupportRAT)
- [Pr0xylife BitRAT IOC](https://github.com/pr0xylife/BitRAT)
- [Pr0xylife BazarLoader IOC](https://github.com/pr0xylife/BazarLoader)
- [Pr0xylife SnakeKeylogger IOC](https://github.com/pr0xylife/SnakeKeylogger)
- [Pr0xylife njRat IOC](https://github.com/pr0xylife/njRat)
- [Pr0xylife Vidar IOC](https://github.com/pr0xylife/Vidar)
- [Pr0xylife Warmcookie IOC](https://github.com/pr0xylife/Warmcookie-Badspace)
- [Cloud Intel IOC](https://github.com/unknownhad/CloudIntel)
- [SpamHaus drop.txt](https://www.spamhaus.org/drop/drop.txt)
- [UrlHaus_misp](https://urlhaus.abuse.ch/downloads/misp/)
- [UrlHaus](https://urlhaus.abuse.ch/api/#csv)
- [vx-underground - Great Resource for Samples and Intelligence Reports](https://vx-underground.org/Samples)

</details> 

### Github

<details>

More github lists: https://github.com/mthcht?tab=stars&user_lists_direction=asc&user_lists_sort=name

</details>

### SIEM/SOC related:
<details>
  
- [EDR Telemetry](https://github.com/tsale/EDR-Telemetry)
- [PurpleTeam Scripts](https://github.com/mthcht/Purpleteam)
- [Awesome-SOC](https://github.com/cyb3rxp/awesome-soc)
- [Threat-Hunting with Splunk](https://github.com/mthcht/ThreatHunting-Keywords)
  
</details> 

### TI TTP/Framework/Model/Trackers

<details>
  
- [Tools used by ransomware groups - @BushidoToken](https://github.com/BushidoUK/Ransomware-Tool-Matrix)
- [Techniques - MITRE ATT&CK](https://attack.mitre.org/techniques/enterprise/)
- [Tactics - MITRE ATT&CK](https://attack.mitre.org/tactics/enterprise/)
- [Mitigation - MITRE ATT&CK](https://attack.mitre.org/mitigations/enterprise/)
- [ATT&CK matrix navigator](https://mitre-attack.github.io/attack-navigator/)
- [All MITRE data in xlsx format](https://attack.mitre.org/resources/attack-data-and-tools/) 
- [Tools used by threat actor groups - MITRE ATT&CK](https://attack.mitre.org/software/)
- [atomic-red-team](https://github.com/redcanaryco/atomic-red-team)
- [redcanary Threat Detection report](https://redcanary.com/threat-detection-report/)
- [The-Unified-Kill-Chain](https://www.unifiedkillchain.com/assets/The-Unified-Kill-Chain.pdf)
- [TTP pyramid](https://scythe.io/library/summiting-the-pyramid-of-pain-the-ttp-pyramid)
- [Pyramid of pain](https://detect-respond.blogspot.com/2013/03/the-pyramid-of-pain.html)
- [Cyber Kill chain](https://www.lockheedmartin.com/en-us/capabilities/cyber/cyber-kill-chain.html)
- [MITRE D3FEND](https://d3fend.mitre.org/)
- [MITRE CAPEC](https://capec.mitre.org/)
- [MITRE CAR](https://car.mitre.org/)
- [MITRE PRE-ATT&CK Techniques](https://attack.mitre.org/versions/v7/techniques/pre/)
- [Ransomware.live](https://ransomware.live)

</details>


###  Investigation

#### TI checks

<details>
  
  - [Virustotal](https://www.virustotal.com/#/home/search)
  - [SpamHaus](https://check.spamhaus.org/)
  - [AbuseIPDB](https://www.abuseipdb.com/)
  - [Malwarebazaar](https://bazaar.abuse.ch/)
  - [emailrep](https://emailrep.io/)
  - [cloudfare scan](https://radar.cloudflare.com/scan)
  - [shodan](https://www.shodan.io/)
  - [Onyphe](https://www.onyphe.io/)
  - [Censys](https://search.censys.io/)
  - [cybergordon (reputation check)](https://cybergordon.com/)
  - [threatminer](https://www.threatminer.org/)
  - [urlscan](https://urlscan.io/)
  - [Apptotal (apps and extensions analysis)](https://apptotal.io/)
  - [urlquery](http://urlquery.net/)
  - [cloudfare scanner](https://radar.cloudflare.com/)
  - [urlvoid](https://www.urlvoid.com)
  - [urldna.io](https://urldna.io/)
  - [checkphish](https://checkphish.bolster.ai/)
  - [ipvoid](https://www.ipvoid.com/)
  - [mxtoolbox](https://mxtoolbox.com/NetworkTools.aspx)
  - [Microsoft TI](https://ti.defender.microsoft.com/)
  - [pulsedive](https://pulsedive.com/)
  - [threatbook](https://threatbook.io/)
  - [McAfee Threat Intelligence Exchange](https://www.mcafee.com/enterprise/en-us/products/threat-intelligence-exchange.html)
  - [Kaspersky Security Network](https://www.kaspersky.com/security-network)
  - [Microsoft Security Intelligence Report](https://www.microsoft.com/en-us/wdsi/intelligence-report)
  - [IBM X-Force Exchange](https://exchange.xforce.ibmcloud.com/) 
  - [AlienVault OTX](https://otx.alienvault.com/)
  - [greynoise](https://viz.greynoise.io/)
  - [whoxy](https://www.whoxy.com/reverse-whois/)
  - [url tiny-scan](https://www.tiny-scan.com/)
  
  - [echotrail](https://www.echotrail.io/)
  - [Malware-Traffic-Analysis (PCAP files)](https://malware-traffic-analysis.net/)
  - [redhuntlabs](https://redhuntlabs.com/online-ide-search)
  - [whois domaintools](https://whois.domaintools.com/)
  - [ASN check bgp.he](/bgp.he.net/)
  - [viewdns](http://viewdns.info/)
  - [OUI mac address lookup](https://www.wireshark.org/tools/oui-lookup.html)
  - [xcyclopedia](https://strontic.github.io/xcyclopedia/)
  - [abuse.ch](https://abuse.ch/#platforms)
  - [malware-traffic-analysis](https://www.malware-traffic-analysis.net/index.html)
  - [waybackmachine](http://web.archive.org/)
  - [dnshistory](https://dnshistory.org/)
  - [asnlookup](https://asnlookup.com/)
  - [fofa.info](https://fofa.info/)
  - [SecurityTrail](https://securitytrails.com/)
  - [ZommEye](https://www.zoomeye.hk/)

</details>

#### Sandbox

<details>
  
- [Sandbox Anyrun](https://any.run/)
- [triage](https://tria.ge/s)
- [capesandbox](https://www.capesandbox.com/)
- [joesandbox](https://www.joesandbox.com/analysispaged/0)
- [filescan.io](https://www.filescan.io/)
- [Sandbox HA](https://www.hybrid-analysis.com/)
- [virustotal](https://www.virustotal.com)
- [threat zone](https://app.threat.zone/scan)
- [vmray](https://www.vmray.com/)
</details>


### Data manipulation

<details>
  
- [jsoncrack](https://jsoncrack.com/editor)
- [JS deobfuscator](https://lelinhtinh.github.io/de4js/)
- [cyberchef](https://cyberchef.org/)
- [PCAP online analyzer](https://apackets.com/)
- [Hash calculator](https://md5calc.com/hash)
- [regex101](https://regex101.com/)
- [CyberChef](https://gchq.github.io/CyberChef/)
- [Javascript Deobfuscator](https://deobfuscate.relative.im/)
- [JSONViewer](https://jsonviewer.stack.hu/)
- [TextMechanic](https://textmechanic.com/)
- [UrlEncode.org](https://www.urlencoder.org/)
- [TextFixer](https://www.textfixer.com/)
- [RegExr](https://regexr.com/)
- [TextUtils](https://textutils.com/)
- [TextCompactor](https://textcompactor.com/)
- [Pretty Diff](https://prettydiff.com/)
- [XML Tree](http://www.xmltree.com/)
- [Online XML Formatter and Beautifier](https://www.freeformatter.com/xml-formatter.html)
- [XML Escape Tool](https://www.freeformatter.com/xml-escape.html)
- [DiffChecker](https://www.diffchecker.com/)
- [CSVJSON](https://www.csvjson.com/)
- [HTML Formatter](https://htmlformatter.com/)
- [Text Tool](https://texttools.netlify.app/)
- [String Manipulation Tool](https://string-functions.com/)
- [unshorten it](https://www.unshorten.it)
- [urlunscrambler](https://www.urlunscrambler.com/)
- [longurl](https://www.longurl.org/)
- [Message Header](https://mha.azurewebsites.net/pages/mha.html)
- [MXToolbox EmailHeaders](https://mxtoolbox.com/EmailHeaders.aspx)
- [Email Header Analyzer](https://emailheaders.verification-check.com/)
- [Email Header Analysis](https://www.email-format.com/header-analysis/)
- [Gitlab dashboard from Excel](https://thisdavej.com/copy-table-in-excel-and-paste-as-a-markdown-table/)
- [OPENAI](https://openai.com/playground)
- [uncoder](https://uncoder.io/)
- [DeHashed](https://dehashed.com/)

</details>


### Detection Resources

<details>

- [Detection Lists](https://github.com/mthcht/awesome-lists/tree/main/Lists)
- [MITRE techniques](https://attack.mitre.org/techniques/enterprise/)
- [MITRE Updates](https://attack.mitre.org/resources/updates/)
- [MITRE D3fend](https://d3fend.mitre.org/)
- [MITRE Navigator](https://mitre-attack.github.io/attack-navigator/)
- [MITRE Datasources](https://attack.mitre.org/datasources/)
- [GTFOBIN](https://github.com/mthcht/GTFOBins.github.io)
- [LOLBAS](https://github.com/mthcht/LOLBAS)
- [LOTS](https://lots-project.com/)
- [loldrivers](https://www.loldrivers.io/)
- [LOLRMM](https://github.com/magicsword-io/LOLRMM)
- [WTFBIN](https://wtfbins.wtf/)
- [Sigma](https://github.com/mthcht/sigma/tree/master/rules)
- [Splunk Rules](https://research.splunk.com/detections/)
- [Elastic Rules](https://github.com/elastic/detection-rules)
- [DFIR-Report Sigma-Rules](https://github.com/The-DFIR-Report/Sigma-Rules)
- [JoeSecurity Sigma-Rules](https://github.com/joesecurity/sigma-rules/tree/master/rules)
- [mdecrevoisier Sigma-Rules](https://github.com/mdecrevoisier/SIGMA-detection-rules)
- [P4T12ICK Sigma-Rules](https://github.com/P4T12ICK/Sigma-Rule-Repository)
- [tsale Sigma-Rules](https://github.com/tsale/Sigma_rules)
- [list of detections resources](https://github.com/jatrost/awesome-detection-rules)
- [detection engineering resources](https://github.com/infosecB/awesome-detection-engineering)
- [awesome-threat-detection](https://github.com/0x4D31/awesome-threat-detection)
</details>


### DFIR

<details>

  - [EricZimmerman Tools](https://ericzimmerman.github.io/#!index.md)
  - [dfir-orc](https://github.com/dfir-orc)
  - [dfir-orc-config](https://github.com/DFIR-ORC/dfir-orc-config)
  - [Splunk4DFIR](https://github.com/mf1d3l/Splunk4DFIR)
  - [dfiq](https://github.com/google/dfiq)
  - [PSBits](https://github.com/gtworek/PSBits)
  - [Yara TH](https://github.com/mthcht/ThreatHunting-Keywords-yara-rules) + [TH](https://github.com/mthcht/ThreatHunting-Keywords)
  - [Hayabusa](https://github.com/Yamato-Security/hayabusa)
  - [chainsaw](https://github.com/WithSecureLabs/chainsaw)
  - [regripper](https://github.com/warewolf/regripper)
  - [RdpCacheStitcher](https://github.com/BSI-Bund/RdpCacheStitcher)
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [Kape](https://www.kroll.com/en/insights/publications/cyber/kroll-artifact-parser-extractor-kape)
  - [Kape Files](https://github.com/EricZimmerman/KapeFiles)
  - [More Kape ressources](https://github.com/AndrewRathbun/Awesome-KAPE)
  - [VolatileDataCollector](https://github.com/gtworek/VolatileDataCollector)
  - [Velociraptor](https://github.com/Velocidex/velociraptor)
  - [MemDump](https://nircmd.nirsoft.net/memdump.html)
  - [MemProcFS](https://github.com/ufrisk/MemProcFS)
  - [avml](https://github.com/microsoft/avml)
  - [Lime](https://github.com/504ensicsLabs/LiME)
  - [WinPmem](https://github.com/Velocidex/WinPmem)
  - [Volatility](https://github.com/volatilityfoundation/volatility3/)
  - [Windows artifacts](https://github.com/Psmths/windows-forensic-artifacts)
  - [UAC](https://github.com/tclahr/uac)
  - [lists - aboutdfir.com](https://aboutdfir.com/)

</details>

### Security News

<details>
  
- [Twitter](https://twitter.com/home)
- [CERT-FR](https://www.cert.ssi.gouv.fr/)
- [CERT FR Alerts](https://www.cert.ssi.gouv.fr/alerte/)
- [CERT FR Avis](https://www.cert.ssi.gouv.fr/avis/)
- [NIST CVEs](https://nvd.nist.gov/vuln/search/results?isCpeNameSearch=false&results_type=overview&form_type=Basic&search_type=all&startIndex=0)
- [JPCERT](https://www.jpcert.or.jp/english/)
- [CISA news](https://www.cisa.gov/news-events/news)
- [thedfirreport Feed](https://thedfirreport.com/feed/)
- [Splunk Research Blog](https://www.splunk.com/en_us/blog/author/secmrkt-research.html)
- [Unit42 Feed](http://feeds.feedburner.com/Unit42)
- [DFIR weekly sumary - thisweekin4n6](https://thisweekin4n6.wordpress.com/feed/)
- [Google Threat Intelligence](https://cloud.google.com/blog/topics/threat-intelligence)
- [Sekoi Blog](https://blog.sekoia.io/)
- [akamai Feed](http://blogs.akamai.com/atom.xml)
- [Elastic Blog](https://www.elastic.co/security-labs)
- [Checkpoint research Feed](https://research.checkpoint.com/feed)
- [Cisco Talos Feed](http://vrt-sourcefire.blogspot.com/feeds/posts/default)
- [Crowdstrike Feed](http://blog.crowdstrike.com/feed)
- [Hexacorn Blog](http://www.hexacorn.com/blog/feed/)
- [simone kraus Blog](https://medium.com/@simone.kraus)
- [Michael Haag Blog](https://haggis-m.medium.com/)
- [EricaZelic Blog](https://ericazelic.medium.com/)
- [Adam Chester Blog Feed](https://blog.xpnsec.com/rss.xml)
- [Mauricio Velazco Blog](https://medium.com/@mvelazco)
- [Clément Notin Feed](https://clement.notin.org/feed.xml)
- [tenable Blog](https://medium.com/tenable-techblog)
- [horizon3 Feed](https://www.horizon3.ai/feed/)
- [Incidents reports Feed](https://fetchrss.com/rss/65b0eb775582bd1c19083c4365b0fdb664898a0daa63bef4.xml)
- [NCC Group Research Feed](https://research.nccgroup.com/feed/)
- [SpecterOps Feed](https://posts.specterops.io/feed)
- [Redcanary Feed](https://www.redcanary.co/feed/)
- [Sophos Research Feed](https://news.sophos.com/en-us/category/threat-research/feed/)
- [virusbulletin](https://www.virusbulletin.com/virusbulletin/)
- [Offensive Research - DSAS by INJECT](https://blog.injectexp.dev/)
- [HackerNews Feed](https://feeds.feedburner.com/TheHackersNews)
- [Bleepingcomputer Feed](https://www.bleepingcomputer.com/feed/)
- [detect.fyi](https://detect.fyi/)
- [DFIR Podcasts](https://digitalforensicsurvivalpodcast.libsyn.com/podcast)
- [DFIR weekly news](https://thisweekin4n6.com/)
- [sans blog](https://www.sans.org/blog/)

</details>


### Youtube/Twitch channels

<details>
  
  - [DFIR - 13cubed videos](https://www.youtube.com/@13Cubed/videos)
  - [DFIR - SANS videos](https://www.youtube.com/@SANSForensics/videos)
  - [DFIR - DFIRScience](https://www.youtube.com/@DFIRScience/videos)
  - [Malware Analysis - jstrosch](https://www.youtube.com/@jstrosch/videos)
  - [Malware Analysis - cyberraiju](https://www.youtube.com/@cyberraiju/videos)
  - [Malware Analysis - Botconf](https://www.youtube.com/@BotConfTV)
  - [DFIR - BlackPerl](https://youtube.com/watch?v=KzD0MmEYAzQ&list=PLjWEV7pmvSa6f-NTpXsaUYWZLjLAB_0TS)
  - [DFIR - BlueMonkey4n6](https://www.youtube.com/@BlueMonkey4n6/playlists)
  - [DFIR - binaryzone](https://www.youtube.com/@binaryz0ne/playlists)
  - [Exploitation - HackerSploit](https://www.youtube.com/@HackerSploit/playlists)
  - [DFIR - TheTaggartInstitute](https://www.youtube.com/@TheTaggartInstitute/videos)
  - [Malware Analysis - JohnHammond](https://www.youtube.com/@_JohnHammond)
  - [Exploitation - Defcon Talks](https://www.youtube.com/user/DEFCONConference/videos)  + https://media.defcon.org/
  - [Exploitation - Alh4zr3d - twitch](https://www.twitch.tv/Alh4zr3d)
  - [Exploitation - Alh4zr3d - youtube](https://www.youtube.com/@alh4zr3d3/videos)
  - [Exploitation - incodenito](https://youtube.com/@incodenito?si=uV9UDhYFs_vQYayR)
  - [Malware Analysis - MalwareTechBlog](https://www.youtube.com/@MalwareTechBlog)
  - [Exploitation - LiveOverflow](https://www.youtube.com/@LiveOverflow)
  - [!!! Exploitation - ippsec](https://www.youtube.com/@ippsec)

</details>

### Training

<details>

#### DFIR
  
  - 13cubed - Investigating Windows Endpoints [13cubed.com -windows endpoints](https://training.13cubed.com/investigating-windows-endpoints)
  - 13cubed - Investigating Windows Memory [13cubed.com -windows memory](https://training.13cubed.com/investigating-windows-memory)
  - 13cubed - Investigating Linux Devices [13cubed.com - linux](https://training.13cubed.com/investigating-linux-devices)
  - SANS: [FOR500](https://www.sans.org/cyber-security-courses/windows-forensic-analysis/)
  - SANS: [FOR508](https://www.sans.org/cyber-security-courses/advanced-incident-response-threat-hunting-training/)
  - Defensive-security: [Linux-live-forensics](https://edu.defensive-security.com/linux-attack-live-forensics-at-scale)
  - @0gtweet - Forensic course: [Mastering Windows Forensics](https://grzegorz-tworek-s-school.teachable.com/)
  - @DebugPrivilege : Forensic Debugging free course [InsightEngineering](https://github.com/DebugPrivilege/InsightEngineering)
    
  - Challenges:
    - @inversecos - APT Emulation Labs: [xintra](https://www.xintra.org/labs)
    - @TheDFIRReport : LABs with logs from the existing reports [dfir-labs](https://the-dfir-report-store.myshopify.com/collections/dfir-labs)
    - @ACEresponder: Courses with Detailed Explanations and Labs [aceresponder.com](https://www.aceresponder.com/challenges)
    - @binaryz0ne: DFIR challenges with [Datasets](https://www.ashemery.com/dfir.html) 

#### SOC

 - tryhackme - [SOC lvl 1](https://tryhackme.com/path/outline/soclevel1)
 - letsdefend.io @chrissanders88 - [letsdefend.io](https://app.letsdefend.io/training)
 - Constructing Defense [constructingdefense.com](https://course.constructingdefense.com/constructing-defense)
 - SANS: [SANS555](https://www.sans.org/cyber-security-courses/siem-with-tactical-analytics/)

 - Challenges:
   - Splunk Boss Of The SOC - [BOTS](https://bots.splunk.com/)
     - BOTS [dataset v1](https://github.com/splunk/botsv1)   
     - BOTS [dataset v2](https://github.com/splunk/botsv2)   
     - BOTS [dataset v3](https://github.com/splunk/botsv3)
  - @TheDFIRReport : LABs with logs from the existing reports [dfir-labs](https://the-dfir-report-store.myshopify.com/collections/dfir-labs)
  - @ACEresponder: Courses with Detailed Explanations and Labs [aceresponder.com](https://www.aceresponder.com/challenges)
  - @inversecos - APT Emulation Labs: [xintra](https://www.xintra.org/labs)

#### Challenges

  - [HackTheBox](https://www.hackthebox.com)
  - [Pentestlab](https://pentesterlab.com)
  - [Root-Me](https://www.root-me.org)
  - [TryHackMe](https://tryhackme.com)
  - [Zenk-Security](https://www.zenk-security.com/challenges)

 </details>

### Books

<details>
  
#### DFIR
  - [Practical Forensic Imaging](https://www.amazon.com/Practical-Forensic-Imaging-Securing-Evidence/dp/1593277938)
  - [Practical-Linux-Forensics-Digital-Investigators](https://www.amazon.com/Practical-Linux-Forensics-Digital-Investigators-ebook/dp/B096Z4CRC8)
  - [TheHitchhikersGuidetoDFIRExperiencesFromBeginnersandExperts - Free](https://leanpub.com/TheHitchhikersGuidetoDFIRExperiencesFromBeginnersandExperts)
  - [Eric Zimmerman Manual Tools - Free](https://leanpub.com/eztoolsmanuals)
  - [The Art of Memory Forensics: Detecting Malware and Threats in Windows, Linux, and Mac Memory](https://www.amazon.com/Art-Memory-Forensics-Detecting-Malware/dp/1118825098)
  - [Applied Incident Response](https://www.amazon.com/Applied-Incident-Response-Steve-Anson/dp/1119560268)
  - [SANS FOR500 / FOR508 book](https://www.sans.org/cyber-security-courses/advanced-incident-response-threat-hunting-training/)
  - [Blue Team Handbook: Incident Response Edition](https://www.amazon.com/Blue-Team-Handbook-condensed-Responder/dp/1500734756)
  - [Practical Malware Analysis: The Hands-On Guide to Dissecting Malicious Software](https://www.amazon.com/Practical-Malware-Analysis-Hands-Dissecting/dp/1593272901)
  - [Placing the Suspect Behind the Keyboard: DFIR Investigative Mindset](https://www.amazon.com/Placing-Suspect-Behind-Keyboard-Investigative/dp/B0CZPJF23Q)
  - [Crafting the InfoSec Playbook: Security Monitoring and Incident](https://www.amazon.com/Crafting-InfoSec-Playbook-Security-Monitoring/dp/1491949406)
  - [Investigating Windows Systems](https://www.amazon.com/Investigating-Windows-Systems-Harlan-Carvey/dp/0128114150)

#### Malware Anaysis
  - [Practical Malware Analysis: The Hands-On Guide to Dissecting Malicious Software](https://www.amazon.com/Practical-Malware-Analysis-Hands-Dissecting/dp/1593272901)
  - [The Art of Memory Forensics: Detecting Malware and Threats in Windows, Linux, and Mac Memory](https://www.amazon.com/Art-Memory-Forensics-Detecting-Malware/dp/1118825098)

#### SOC
  - [Blue Team Handbook: SOC, SIEM, and Threat Hunting](https://www.amazon.com/Blue-Team-Handbook-Condensed-Operations/dp/1091493898)
  - [BTFM: Blue Team Field Manual](https://www.amazon.fr/Blue-Team-Field-Manual-BTFM/dp/154101636X)
  - [PTFM: Purple Team Field Manual](https://www.amazon.com/PTFM-Purple-Team-Field-Manual/dp/B08LJV1QCD) + [PTFM: Purple Team Field Manual v2](https://www.amazon.com/PTFM-2nd-Purple-Field-Manual/dp/1736526790)
  - [EDR - Introduction to endpoint security](https://www.amazon.com/Endpoint-Detection-Response-Essentials-deployment/dp/1835463266)
  - [MITRE - 11 Strategies of a World-Class Cybersecurity Operations Center](https://www.amazon.com/Strategies-World-Class-Cybersecurity-Operations-Center-ebook/dp/B09ZDWRFMW)
  - [Practical Malware Analysis: The Hands-On Guide to Dissecting Malicious Software](https://www.amazon.com/Practical-Malware-Analysis-Hands-Dissecting/dp/1593272901)
  - [SANS 555 book](https://www.sans.org/cyber-security-courses/siem-with-tactical-analytics/)


#### Deep Dive
  - [Windows Internals Books](https://learn.microsoft.com/en-us/sysinternals/resources/windows-internals)
  - [How Linux Works](https://www.amazon.com/How-Linux-Works-Brian-Ward-ebook/dp/B07X7S1JMB)
  - [Linux Device Drivers](https://lwn.net/Kernel/LDD3/)
  - [Understanding The Linux Virtual Memory Manager](https://www.kernel.org/doc/gorman/pdf/understand.pdf)
  - [Linux insides](https://github.com/0xAX/linux-insides/blob/master/SUMMARY.md)
  - [Linux Ebpf](https://www.amazon.com/Learning-eBPF-Programming-Observability-Networking/dp/1098135121)

#### Exploitation
  - [Hacking Art Exploitation](https://www.amazon.com/Hacking-Art-Exploitation-Jon-Erickson-ebook/dp/B004OEJN3I)
  - [Hacker Playbook Practical Penetration Testing](https://www.amazon.com/Hacker-Playbook-Practical-Penetration-Testing-ebook/dp/B07CSPFYZ2)
  - [RTFM: Red Team Field Manual](https://www.amazon.com/RTFM-Red-Team-Field-Manual-ebook/dp/B0B7H8X3XY)
  - [Red Team Development and Operations: A practical guide](https://www.amazon.com/Red-Team-Development-Operations-practical-ebook/dp/B0842BMMCC)
  - [RTRM: Red Team Reference Manual](https://www.amazon.com/RTRM-Red-Team-Reference-Manual/dp/B08N37KDPQ)

</details>

### LAB

<details>

- [ludus](https://gitlab.com/badsectorlabs/ludus) 
- [GOAD](https://github.com/Orange-Cyberdefense/GOAD)
- [flare-fakenet-ng](https://github.com/mandiant/flare-fakenet-ng)
- [flare-vm](https://github.com/mandiant/flare-vm)
- [StratosphereLinuxIPS](https://github.com/stratosphereips/StratosphereLinuxIPS)
- [maltrail](https://github.com/stamparm/maltrail)
- [openbas](https://github.com/OpenBAS-Platform/openbas)
- [LLM honeypot galah](https://github.com/0x4D31/galah)
- [honeypot canary](https://github.com/thinkst/opencanary)
- [Respoter](https://github.com/lawndoc/Respotter)
- [HEDnsExtractor](https://github.com/HuntDownProject/HEDnsExtractor)
- [iris-web](https://github.com/dfir-iris/iris-web)
- [JonMon](https://github.com/jsecurity101/JonMon)
- [OpenCTI](https://github.com/OpenCTI-Platform/opencti)

</details>

### Others

<details>
  
- [Crontab check](https://crontab.guru/every-2-minutes)
- [Subnet Calculator](https://mxtoolbox.com/subnetcalculator.aspx)
- [chmod calculator](https://chmod-calculator.com/)
- [Epoch time converter](https://www.epochconverter.com/)
- [cyberchef](https://cyberchef.org/)
- [Chrome Addon for TI checks](https://chromewebstore.google.com/detail/osintlytics/kfpbbegdghffnakhgcbonaglepgoedmm)
</details>

