//:: k_ptat_haswrit
/*
    The player has a bounty writ.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oLicense = GetItemPossessedBy(oPC, "tat17_bountywrit");

    if (GetIsObjectValid(oLicense) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
