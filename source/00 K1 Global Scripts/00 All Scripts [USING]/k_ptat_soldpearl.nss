//:: k_ptat_soldpearl
/*
     The player has sold the pearl that Sharina gave.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oPearl = GetItemPossessedBy(oPC, "tat17_fizarkprl");

    if (GetIsObjectValid(oPearl) == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
