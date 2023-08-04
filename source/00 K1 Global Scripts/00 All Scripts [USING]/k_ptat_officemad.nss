//::///////////////////////////////////////////////
//:: Conversation
//:: k_ptat_officemad
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Sets OfficeMad local to TRUE so officer is now mad
*/
//:://////////////////////////////////////////////
//:: Created By: Lukas Kristjanson
//:: Created On: Sept 19, 2002
//:://////////////////////////////////////////////
#include "k_inc_tat"

void main()
{
    object oPC = GetFirstPC();

    GiveGoldToCreature(oPC, 50);
    SetOfficeMadLocal(TRUE);
}


