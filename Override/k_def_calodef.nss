//:: k_def_calodef
/*
    User Defined Script
    for Calo Nord.  Initiate
    on PC perception
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"
#include "k_inc_utility"
void main()
{
    int nUser = GetUserDefinedEventNumber();

    if(nUser == 1001) //HEARTBEAT
    {

    }
    else if(nUser == 1002) // PERCEIVE
    {
        if(GetLastPerceptionSeen())
        {
            if(GetLastPerceived() == GetPartyMemberByIndex(0))
            {
                Db_PostString("Player is Seen", 5, 5, 4.0);
                ClearAllActions();
                if(GetTag(OBJECT_SELF) == "CaloNord" && GetGlobalNumber("K_KALO_BANDON") >= 10)
                {
                    Db_PostString("Talking To Play", 5, 6, 4.0);
                    GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_PERCEPTION, FALSE);
                    ActionStartConversation(GetPartyMemberByIndex(0), "k_h_calo", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
                }
                else if(GetTag(OBJECT_SELF) == "g_bandon" && GetGlobalNumber("K_KALO_BANDON") >= 30)
                {
                    GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_PERCEPTION, FALSE);
                    ActionStartConversation(GetPartyMemberByIndex(0), "k_h_bandon", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
                }
            }
        }
    }
    else if(nUser == 1003) // END OF COMBAT
    {

    }
    else if(nUser == 1004) // ON DIALOGUE
    {

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
    else if(nUser == 1011) //DIALOGUE END
    {

    }
    else if(nUser == HOSTILE_RETREAT)
    {
        UT_ReturnToBase();
    }
}

