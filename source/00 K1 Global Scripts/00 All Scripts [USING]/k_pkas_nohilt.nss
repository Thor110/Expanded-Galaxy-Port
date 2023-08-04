//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_nohilt
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    The player does not have the sword hilt.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: July 31, 2002
//:://////////////////////////////////////////////

int StartingConditional()
{
    object oPC = GetPCSpeaker();

    if (GetIsObjectValid(GetItemPossessedBy(oPC, "kas25_swordhilt")) == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
