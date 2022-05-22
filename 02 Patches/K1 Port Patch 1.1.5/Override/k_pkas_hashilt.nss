//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_hashilt
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    The player has the sword hilt.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: July 31, 2002
//:://////////////////////////////////////////////

int StartingConditional()
{
    object oPC = GetPCSpeaker();

    if (GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_swordhilt")) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
