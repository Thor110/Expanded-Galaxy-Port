//::///////////////////////////////////////////////
//:: User Defined
//:: h_jol_userdef01
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*

*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: July 23, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

void main()
{
    int nUser = GetUserDefinedEventNumber();

    object oPC = GetFirstPC();
    object oParty1 = GetPartyMemberByIndex(0);
    object oParty2 = GetPartyMemberByIndex(1);
    object oParty3 = GetPartyMemberByIndex(2);

    if (nUser == 100)
    {
    }
    else if(nUser == 1001) //HEARTBEAT
    {
        if (GetJoleeTalkLocal() == TRUE &&
            GetIsObjectValid(GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF, 1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN)) == FALSE &&
            GetDistanceToObject(oPC) < 20.0)
        {
            ClearAllActions();
            CancelCombat(OBJECT_SELF);
            AssignCommand(oParty1, ClearAllActions());
            AssignCommand(oParty2, ClearAllActions());
            AssignCommand(oParty3, ClearAllActions());
            AssignCommand(oParty1, CancelCombat(OBJECT_SELF));
            AssignCommand(oParty2, CancelCombat(OBJECT_SELF));
            AssignCommand(oParty3, CancelCombat(OBJECT_SELF));

            SetJoleeTalkLocal(FALSE);
            //ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_1);
            NoClicksFor(1.2);
            DelayCommand(1.0, ActionStartConversation(oPC, "kas24_jolee_01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
        }
    }
    else if(nUser == 1002) // PERCEIVE
    {

    }
    else if(nUser == 1003) // END OF COMBAT
    {

    }
    else if(nUser == 1004) // ON DIALOGUE
    {
        object oPC = GetFirstPC();

        if (IsObjectPartyMember(OBJECT_SELF) == FALSE &&
            GetTag(GetArea(OBJECT_SELF)) == "kas_m24aa")
        {
            // If this is the first meeting of Jolee he will use the
            // kas24_jolee_01 conversation file.
            if (GetJoleeHomeLocal() == FALSE)
            {
                ClearAllActions();
                BeginConversation("kas24_jolee_01");
            }
            // If Jolee is on Kashyyyk and not in the party he will use the
            // kas24_jolee_02 conversation file.
            else if (GetJoleeHomeLocal() == TRUE)
            {
                ClearAllActions();
                BeginConversation("kas24_jolee_02");
            }
        }
        else
        {
            ClearAllActions();
            BeginConversation();
        }
    }
    else if(nUser == 1005) // ATTACKED
    {

    }
    else if(nUser == 1006) // DAMAGED
    {

    }
    else if(nUser == 1007) // DEATH
    {

    }
    else if(nUser == 1008) // DISTURBED
    {

    }
    else if(nUser == 1009) // BLOCKED
    {

    }
    else if(nUser == 1010) // SPELL CAST AT
    {

    }
}
