//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_takehilt
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Freyyr takes the sword hilt from the player.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 1, 2002
//:://////////////////////////////////////////////

void main()
{
    object oPC = GetPCSpeaker();
    object oSword = GetItemPossessedBy(oPC, "kas25_swordhilt");

    ActionTakeItem(oSword, oPC);
}
