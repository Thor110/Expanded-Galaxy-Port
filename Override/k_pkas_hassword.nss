//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_hassword
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
	The player has Bacca's sword.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 2, 2002
//:://////////////////////////////////////////////

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oSword = GetItemPossessedBy(oPC, "kas23_baccasword");

    if (GetIsObjectValid(oSword) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
