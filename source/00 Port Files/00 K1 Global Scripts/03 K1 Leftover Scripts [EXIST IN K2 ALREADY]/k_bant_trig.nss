//:: k_bant_trig
/*
     Default script for banter triggers
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{
 ///check for hostiles in range

    object oPC = GetEnteringObject();
    object oHostile = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, oPC, 1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN);

    if(oPC==GetPartyMemberByIndex(0) &&(!GetIsObjectValid(oHostile) || (GetIsObjectValid(oHostile) && GetDistanceBetween(oPC, oHostile) > 40.0)))
     {



     if (GetEnteringObject()==GetPartyMemberByIndex(0) && UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
        {
    /*    Db_PostString("Banter Trigger");
        */

        //Check for banter 1
        if (GetGlobalBoolean("G_Banter1")==FALSE &&
        IsNPCPartyMember(NPC_CARTH)==TRUE &&
        IsNPCPartyMember(NPC_BASTILA)==TRUE &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 8.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 8.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 8.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 2
        if (GetGlobalBoolean("G_Banter2")==FALSE &&
        IsNPCPartyMember(NPC_CARTH)==TRUE &&
        IsNPCPartyMember(NPC_BASTILA)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 3
        if (GetGlobalBoolean("G_Banter3")==FALSE &&
        IsNPCPartyMember(NPC_CARTH)==TRUE &&
        IsNPCPartyMember(NPC_MISSION)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 4
        if (GetGlobalBoolean("G_Banter4")==FALSE &&
        IsNPCPartyMember(NPC_CARTH)==TRUE &&
        IsNPCPartyMember(NPC_MISSION)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 5

        if (GetGlobalBoolean("G_Banter5")==FALSE &&
        IsNPCPartyMember(NPC_CARTH)==TRUE &&
        IsNPCPartyMember(NPC_CANDEROUS)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 6
        if (GetGlobalBoolean("G_Banter6")==FALSE &&
        IsNPCPartyMember(NPC_CANDEROUS)==TRUE &&
        IsNPCPartyMember(NPC_BASTILA)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 7
        if (GetGlobalBoolean("G_Banter7")==FALSE &&
        IsNPCPartyMember(NPC_MISSION)==TRUE &&
        IsNPCPartyMember(NPC_ZAALBAR)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 8
        if (GetGlobalBoolean("G_Banter8")==FALSE &&
        IsNPCPartyMember(NPC_MISSION)==TRUE &&
        IsNPCPartyMember(NPC_ZAALBAR)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 9
        if (GetGlobalBoolean("G_Banter9")==FALSE &&
        IsNPCPartyMember(NPC_MISSION)==TRUE &&
        IsNPCPartyMember(NPC_BASTILA)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 10
        if (GetGlobalBoolean("G_Banter10")==FALSE &&
        GetGlobalNumber("K_CURRENT_PLANET")!= 20 &&
        IsNPCPartyMember(NPC_JOLEE)==TRUE &&
        IsNPCPartyMember(NPC_BASTILA)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 10.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 10.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }

        //Check for banter 11
        if (GetGlobalBoolean("G_Banter11")==FALSE &&
        IsNPCPartyMember(NPC_CARTH)==TRUE &&
        IsNPCPartyMember(NPC_JOLEE)==TRUE&&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(1)) <= 5.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(0), GetPartyMemberByIndex(2)) <= 5.0 &&
        GetDistanceBetween(GetPartyMemberByIndex(1), GetPartyMemberByIndex(2)) <= 5.0)
        {
        AssignCommand(GetPartyMemberByIndex(0),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(1),ClearAllActions());
        AssignCommand(GetPartyMemberByIndex(2),ClearAllActions());
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetFirstPC(),"Banter");
        }



        }
    }
}
