//::///////////////////////////////////////////////
//:: Conversation
//:: k_pkas_jaaraksus
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    The player has not found out that the bolts
    found on Rorwoor's body belong to Jaarak.
    But the player does have the bolts.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 2, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

int StartingConditional()
{
    object oPC = GetPCSpeaker();
    object oBolts = GetItemPossessedBy(oPC, "kas24_bowcasbolt");

    if (GetJaarakBoltsGlobal() == FALSE && GetIsObjectValid(oBolts))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
