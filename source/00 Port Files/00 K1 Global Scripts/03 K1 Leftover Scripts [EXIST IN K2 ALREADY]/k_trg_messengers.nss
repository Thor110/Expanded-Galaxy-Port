//:: k_trg_messengers
/*
    Determines which messenger to spawn in for a specific planet.
    Uses the waypoint K_MESSENGER_SPAWN to determine where to place an incoming messenger

    Carth: KOR_DANEL == 1. Messenger = Jordo.
    Bastila: K_SWG_HELENA == 1. Messenger = Malare.
    Mission: Mis_MissionTalk == 5  Messenger = Lena
    Canderous: G_CAND_STATE == 8, G_CAND_PLOT == 0, K_CURRENT_PLANET != 35.  Messenger = Jagi
    Juhani: G_JUHANIH_STATE == 7, G_JUHANI_PLOT == 0. Messenger = Xor
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    Db_PostString("MESSENGER SCRIPT FIRING");

    object oPC = GetFirstPC();
    object oPC1 = GetPartyMemberByIndex(0);
    object oPC2 = GetPartyMemberByIndex(1);
    object oPC3 = GetPartyMemberByIndex(2);
    object oWay = GetWaypointByTag("K_MESSENGER_SPAWN");
    object oNPC;
    int nGlobal_1, nGlobal_2;
    location lLocal;

    if(GetIsObjectValid(oWay))
    {
        lLocal = GetLocation(oWay);                                                           //Not on Tatooine
        if(IsNPCPartyMember(NPC_BASTILA) && GetGlobalBoolean("K_MESS_BASTILA") == FALSE && GetGlobalNumber("K_CURRENT_PLANET") != 35)
        {
            nGlobal_1 = GetGlobalNumber("K_SWG_HELENA");
            if(nGlobal_1 == 1)
            {
                SetGlobalBoolean("K_MESS_BASTILA", TRUE);
                UT_CreateObject(OBJECT_TYPE_CREATURE, "g_malare", lLocal);
                oNPC = GetObjectByTag("g_malare");
                DelayCommand(2.0, AssignCommand(oNPC, ActionStartConversation(oPC)));
                return;
            }

        }                                                                                     //Not Korriban
        if(IsNPCPartyMember(NPC_CARTH) && GetGlobalBoolean("K_MESS_CARTH") == FALSE && GetGlobalNumber("K_CURRENT_PLANET") != 30)
        {
            nGlobal_1 = GetGlobalNumber("KOR_DANEL");
            if(nGlobal_1 == 1)
            {
                SetGlobalBoolean("K_MESS_CARTH", TRUE);
                UT_CreateObject(OBJECT_TYPE_CREATURE, "g_jordo", lLocal);
                oNPC = GetObjectByTag("g_jordo");
                DelayCommand(2.0,  AssignCommand(oNPC, ActionStartConversation(oPC)));
                return;
            }

        }                                                                                     //Not on manaan
        if(IsNPCPartyMember(NPC_JOLEE) && GetGlobalBoolean("K_MESS_JOLEE") == FALSE && GetGlobalNumber("K_CURRENT_PLANET") != 25)
        {
            nGlobal_1 = GetGlobalNumber("MAN_MURDER_PLOT");
            if(nGlobal_1 == 0)
            {
                SetGlobalBoolean("K_MESS_JOLEE", TRUE);
                UT_CreateObject(OBJECT_TYPE_CREATURE, "g_davink", lLocal);
                oNPC = GetObjectByTag("g_davink");
                DelayCommand(2.0,  AssignCommand(oNPC, ActionStartConversation(oPC)));
                return;
            }
        }
        if(IsNPCPartyMember(NPC_JUHANI)  && GetGlobalBoolean("K_MESS_JUHANI") == FALSE)
        {
            nGlobal_1 = GetGlobalNumber("G_JUHANIH_STATE");
            nGlobal_2 = GetGlobalNumber("G_JUHANI_PLOT");
            if(nGlobal_1 == 7 && nGlobal_2 == 0)
            {
                SetGlobalBoolean("K_MESS_JUHANI", TRUE);
                UT_CreateObject(OBJECT_TYPE_CREATURE, "g_xor", lLocal);
                oNPC = GetObjectByTag("g_xor");
                DelayCommand(2.0,  AssignCommand(oNPC, ActionStartConversation(oPC)));
                return;
            }

        }                                                                                          //Not on Tatooine
        if(IsNPCPartyMember(NPC_CANDEROUS)  && GetGlobalBoolean("K_MESS_CANDEROUS") == FALSE && GetGlobalNumber("K_CURRENT_PLANET") != 35)
        {
            nGlobal_1 = GetGlobalNumber("G_CAND_STATE");
            nGlobal_2 = GetGlobalNumber("G_CAND_PLOT");
            if(nGlobal_1 == 8 && nGlobal_2 == 0)
            {
                SetGlobalBoolean("K_MESS_CANDEROUS", TRUE);
                oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_jagi", lLocal);
                DelayCommand(2.0,  AssignCommand(oNPC, ActionStartConversation(oPC)));
                return;
            }
        }
        nGlobal_1 = GetGlobalNumber("Mis_MissionTalk");
                                                                                               //Not on Tatooine
        if(IsNPCPartyMember(NPC_MISSION)  && GetGlobalBoolean("K_MESS_MISSION") == FALSE && GetGlobalNumber("K_CURRENT_PLANET") != 35)
        {
            nGlobal_1 = GetGlobalNumber("Mis_MissionTalk");
            if(nGlobal_1 == 5)
            {
                SetGlobalBoolean("K_MESS_MISSION", TRUE);
                UT_CreateObject(OBJECT_TYPE_CREATURE, "g_lena", lLocal);
                oNPC = GetObjectByTag("g_lena");
                DelayCommand(2.0,  AssignCommand(oNPC, ActionStartConversation(oPC)));
                return;
            }
        }
    }
}
