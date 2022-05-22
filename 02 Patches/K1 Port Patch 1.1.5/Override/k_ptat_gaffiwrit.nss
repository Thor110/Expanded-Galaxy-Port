//:: k_ptat_gaffiwrit
/*
    The player has a bounty writ and (gaffi stick OR chietain's gaffi).
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oLicense = GetItemPossessedBy(oPC, "tat17_huntpermit");
    object oGaffi = GetItemPossessedBy(oPC, "tat20_gaffistick");
    object oChiefGaffi = GetItemPossessedBy(oPC, "tat20_gaffichief");
    if ((GetIsObjectValid(oLicense) == TRUE) &&
       ((GetIsObjectValid(oGaffi) == TRUE) ||
        (GetIsObjectValid(oChiefGaffi) == TRUE)))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
