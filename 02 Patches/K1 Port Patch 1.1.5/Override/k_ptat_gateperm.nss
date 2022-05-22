//:: k_ptat_gateperm
/*
     The player has authorization to enter the Dune sea.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oLicense = GetItemPossessedBy(oPC, "tat17_huntpermit");
    object oBountyWrit = GetItemPossessedBy(oPC, "tat17_bountywrit");

    if (GetIsObjectValid(oLicense) == TRUE ||
        GetIsObjectValid(oBountyWrit) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
