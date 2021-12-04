//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_givewrit
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    NPC gives player bounty writ
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: sept 19, 2002
//:://////////////////////////////////////////////

void main()
{
    object oPC = GetPCSpeaker();
    object oWrit = GetItemPossessedBy(OBJECT_SELF, "tat17_bountywrit");

    ActionGiveItem(oWrit, oPC);
}

