//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_nosword
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
	The player does not have Bacca's sword.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 2, 2002
//:://////////////////////////////////////////////

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oSword = GetItemPossessedBy(oPC, "kas23_baccasword");

    if (GetIsObjectValid(oSword) == FALSE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
