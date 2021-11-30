<#
Make sure to set the correct mail addresses before running the script!
#>

$user = "mail@mail.nl"

$le = "info@de-laminaatexpert.nl"
$pvc = "info@de-pvcexpert.nl"
$pax = "info@de-parketexpert.nl"
$te = "info@de-tegelexpert.nl"
$trap = "info@de-trapexpert.nl"
$pl = "info@perfectlaminaat.nl"
$vo = "info@de-vloerenoutlet.nl"

$mailboxes = @($le, $pvc, $pax, $te, $trap, $pl, $vo)

Foreach ($mailbox in $mailboxes) {

Add-MailboxPermission -Identity $mailbox -User $user -AccessRights FullAccess; Add-RecipientPermission $mailbox -AccessRights SendAs -Trustee $user 

}
