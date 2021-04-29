import-module SkypeOnlineConnector
$s = new-csonlinesession
import-pssession $s
echo '=====Available Commands=====

~~Activate Telephony~~ 
___________________________________________________________________________________________________________________
Set-CsUser -Identity "email" -EnterpriseVoiceEnabled $true -HostedVoiceMail $true -OnPremLineURI tel:+441234567890 |
___________________________________________________________________________________________________________________|
~~Grant Voice Routing Policy~~
____________________________________________________________________
Grant-CsOnlineVoiceRoutingPolicy -Identity "email" -PolicyName "UK" |
____________________________________________________________________|
~~Check HostedVoicemail~~
__________________________________________________________________
Get-CsOnlineUser -Identity "email" | Select-Object HostedVoiceMail|
__________________________________________________________________|
~~Check Enterprise Voice~~
__________________________________________________________________________
Get-CsOnlineUser -Identity "email" | Select-Object EnterpriseVoiceEnabled |
__________________________________________________________________________|
~~Check CLI~~
_________________________________________________________________
Get-CsOnlineUser -Identity "email" | Select-Object OnPremLineURI |
_________________________________________________________________|
~~Check Voice Routing Policy~~
_____________________________________________________________________________
Get-CsOnlineUser -Identity "email" | Select-Object OnlineVoiceRoutingPolicy |
____________________________________________________________________________|'
