//:: k_ptat_haspermit
/*
    The player has a hunter's license.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oLicense = GetItemPossessedBy(oPC, "tat17_huntpermit");

    if (GetIsObjectValid(oLicense) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
