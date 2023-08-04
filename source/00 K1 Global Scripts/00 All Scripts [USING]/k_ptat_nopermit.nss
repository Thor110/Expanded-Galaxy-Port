//:: k_ptat_nopermit
/*
    The player does not have a hunter's license.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oLicense = GetItemPossessedBy(oPC, "tat17_huntpermit");

    if (GetIsObjectValid(oLicense) == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
