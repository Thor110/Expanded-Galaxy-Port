//:: k_ptat_nowrit
/*
    The player does not have a Czerka bounty writ.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oLicense = GetItemPossessedBy(oPC, "tat17_bountywrit");

    if (GetIsObjectValid(oLicense) == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
