//:: k_ptat_gaffiwrit
/*
    The player has a gaffi stick.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oGaffi = GetItemPossessedBy(oPC, "tat20_gaffistick");

    if (GetIsObjectValid(oGaffi) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

