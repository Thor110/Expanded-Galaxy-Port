//:: k_trg_partyinit
/*
     Makes the party members initiate
     conversation under certain
     conditions.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
#include "k_inc_generic"


void main()
{

    int nStarmap = GetGlobalNumber("K_STAR_MAP");
    int nBastilaCon = GetGlobalNumber("K_SWG_BASTILA");
    int nBastilaLvl = GetGlobalNumber("K_SWG_BASTILA_LEVEL");
    int nCarthCon = GetGlobalNumber("K_SWG_CARTH");
    int nCarthLvl = GetGlobalNumber("K_SWG_CARTH_LEVEL");
    int nPCLevel = GetHitDice(GetFirstPC());
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    int nMissionCon = GetGlobalNumber("MIS_MISSIONTALK");
    int nJoleeCon = GetGlobalNumber("K_SWG_JOLEE");
    int nJohaniCon =  GetGlobalNumber("G_JUHANIH_STATE");
    int nCandCon = GetGlobalNumber("G_CAND_STATE");

    object oPC = GetEnteringObject();
    object oNPC;
    string sNPC;
    int nBool = FALSE;

    object oHostile = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, oPC, 1, CREATURE_TYPE_PERCEPTION, PERCEPTION_SEEN);


    if(oPC==GetPartyMemberByIndex(0) &&(!GetIsObjectValid(oHostile) || (GetIsObjectValid(oHostile) && GetDistanceBetween(oPC, oHostile) > 40.0)))
    {
        Db_PostString("Party Trigger");

        if(oPC == GetPartyMemberByIndex(0))
        {
            if(UT_CheckCanPartyMemberInterject(NPC_BASTILA, 8.0) &&
               nStarmap >= 20 &&
               nBastilaCon <= 9 &&
               nPCLevel > nBastilaLvl &&
               GetGlobalNumber("K_SWG_HELENA") != 2 &&
               GetGlobalNumber("K_SWG_HELENA") != 3)
            {
                sNPC = "Bastila";
                nBool = TRUE;
            }

            else if(UT_CheckCanPartyMemberInterject(NPC_BASTILA, 8.0) &&
               nStarmap >= 10 &&
               nBastilaCon <= 6 &&
               nPCLevel > nBastilaLvl &&
               GetGlobalNumber("K_SWG_HELENA") != 2 &&
               GetGlobalNumber("K_SWG_HELENA") != 3)
            {
                sNPC = "Bastila";
                nBool = TRUE;
            }

            else if(UT_CheckCanPartyMemberInterject(NPC_CARTH, 8.0) &&
               nStarmap >= 10 &&
               nCarthCon <= 5 &&
               nPCLevel > nCarthLvl)
            {
                sNPC = "Carth";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_BASTILA, 8.0) &&
               nBastilaCon == 0 &&
               nPCLevel > nBastilaLvl &&
               GetGlobalNumber("K_SWG_HELENA") != 2 &&
               GetGlobalNumber("K_SWG_HELENA") != 3)
            {
                sNPC = "Bastila";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_CARTH, 8.0) &&
               nCarthCon <= 2 &&
               nPCLevel > nCarthLvl)
            {
                sNPC = "Carth";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_MISSION, 8.0) &&
               nMissionCon <= 3 &&
               nPlanet != 10)
            {
                sNPC = "Mission";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_JOLEE, 8.0) &&
               nJoleeCon == 0 && GetGlobalNumber("K_Current_Planet")!=20)
            {
                sNPC = "Jolee";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_JUHANI, 8.0) &&
               nJohaniCon == 0)
            {
                sNPC = "Juhani";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_CANDEROUS, 8.0) &&
               nCandCon == 0)
            {
                sNPC = "Cand";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_MISSION, 8.0) &&
               nMissionCon <= 1)
            {
                sNPC = "Mission";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_BASTILA, 8.0) &&
               nBastilaCon <= 3 &&
               nStarmap >= 10 &&
               nPCLevel > nBastilaLvl &&
               GetGlobalNumber("K_SWG_HELENA") != 2 &&
               GetGlobalNumber("K_SWG_HELENA") != 3)
            {
                sNPC = "Bastila";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_CARTH, 8.0) &&
               nCarthCon <= 4 &&
               nPCLevel > nCarthLvl)
            {
                sNPC = "Carth";
                nBool = TRUE;
            }
            else if(UT_CheckCanPartyMemberInterject(NPC_MISSION, 8.0) &&
               nMissionCon <= 2)
            {
                sNPC = "Mission";
                nBool = TRUE;
            }



           else if(UT_CheckCanPartyMemberInterject(NPC_JOLEE, 8.0) &&
               nJoleeCon <= 1 && nJoleeCon > GetGlobalNumber("K_SWG_JOLEE_LEVEL")
               && GetGlobalNumber("K_Current_Planet")!=20)
            {
                sNPC = "Jolee";
                nBool = TRUE;
            }


           /*
           Commented out because it breaks Juhani's dialog
           else if(UT_CheckCanPartyMemberInterject(NPC_JUHANI, 8.0) &&
               nJohaniCon <= 1)
            {
                sNPC = "Juhani";
                nBool = TRUE;
            }*/

          /*
          Commented out because it breaks Canderous' dialog
          else if(UT_CheckCanPartyMemberInterject(NPC_CANDEROUS, 8.0) &&
               nCandCon <= 1)
            {
                sNPC = "Cand";
                nBool = TRUE;
            }
           */
            if(nBool == TRUE && UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
            {
                UT_SetTalkedToBooleanFlag(OBJECT_SELF,TRUE);
                DelayCommand(300.0,UT_SetTalkedToBooleanFlag(OBJECT_SELF,FALSE));
                oNPC = GetObjectByTag(sNPC);
                if(GetIsObjectValid(oNPC))
                {
                    SetGlobalBoolean("G_NPC_TALK", TRUE);
                    //SetGlobalNumber("G_Party_Init_Trig",0);
                    SetPartyLeader(NPC_PLAYER);
                    AssignCommand(oNPC, ClearAllActions());
                    AssignCommand(oNPC, ActionStartConversation(GetFirstPC()));

                }
            }

          /*     if(nBool == TRUE && UT_GetTalkedToBooleanFlag(OBJECT_SELF) == TRUE &&
                GetGlobalNumber("G_Party_Init_Trig")>=150)
            {
                SetGlobalNumber("G_Party_Init_Trig",0);
                oNPC = GetObjectByTag(sNPC);
                if(GetIsObjectValid(oNPC))
                {
                    SetGlobalBoolean("G_NPC_TALK", TRUE);
                    SetGlobalNumber("G_Party_Init_Trig",0);
                    SetPartyLeader(NPC_PLAYER);
                    AssignCommand(oNPC, ClearAllActions());
                    AssignCommand(oNPC, ActionStartConversation(GetFirstPC()));

                }
            }   */

        }
    }
}


