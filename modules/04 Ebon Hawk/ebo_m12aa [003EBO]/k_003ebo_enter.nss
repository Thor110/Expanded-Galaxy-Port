// ST: k_003ebo_enter.nss (k_003_ebo_enter.ncs in 003EBO_s.rim)

#include "k_inc_hawk"

// ---------------------------------------------------------------
// ST: Function prototypes:
// ---------------------------------------------------------------
void RunCutscene(int nScene);
void DoCutscenes();
void TriggerCutscenes();
void UpdateSomeNumbers();
void DelayedFadeIn(float fDelay, float fWait, float fLength);

int PlanetCount();
int GetIsAvailable(int nNPC);
int GetInfluenceDiff(int nNPC1, int nNPC2);
int CheckNPCLevel(int nNPC);
int CheckNPCSkill(int nNPC, int nType);

object GetAndMoveNPCToWaypoint(int nNPC, string sTag);
object GetAndMovePUPToWaypoint(int nPUP, string sTag);

// ---------------------------------------------------------------
// ST: Main function
// ---------------------------------------------------------------
void main() {
  if(GetGlobalBoolean("k_vis_Dantooine") == 0) // only runs when first landing on Dantooine
  {
    SetGlobalNumber("K_CURRENT_PLANET", 0);
    AssignCommand(GetObjectByTag("bastila"), ActionStartConversation(GetFirstPC(), "ebo_bast_vision", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
  }
  if(GetGlobalBoolean("k_vis_korriban") == 0 && GetGlobalNumber("K_CURRENT_PLANET") == 3)
  {
    AssignCommand(GetObjectByTag("bastila"), ActionStartConversation(GetFirstPC(), "ebo_bast_vision", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
  }
  if(GetGlobalBoolean("k_vis_Kashyyyk") == 0 && GetGlobalNumber("K_CURRENT_PLANET") == 11)
  {
    AssignCommand(GetObjectByTag("bastila"), ActionStartConversation(GetFirstPC(), "ebo_bast_vision", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
  }
  if(GetGlobalBoolean("k_vis_Tatooine") == 0 && GetGlobalNumber("K_CURRENT_PLANET") == 14)
  {
    AssignCommand(GetObjectByTag("bastila"), ActionStartConversation(GetFirstPC(), "ebo_bast_vision", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
  }
  if(GetGlobalBoolean("k_vis_Manaan") == 0 && GetGlobalNumber("K_CURRENT_PLANET") == 15)
  {
    AssignCommand(GetObjectByTag("bastila"), ActionStartConversation(GetFirstPC(), "ebo_bast_vision", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
  }
  object oEnter = GetEnteringObject();
  if (oEnter == GetFirstPC())
  {
    SetBackground();
    SetHologramWorld();
  }
}

// ---------------------------------------------------------------
// ST: Increase globals. Don't know why this is a separate function.
// ---------------------------------------------------------------
void UpdateSomeNumbers() {

}

// ---------------------------------------------------------------
// ST: Trigger Ebon Hawk cutscenes. Wrapper for Dxun arrival.
// ---------------------------------------------------------------
void DoCutscenes() {
  object oPC = GetFirstPC();
  AurPostString("ON 003 ENTER: SHOULD NOT BE HITTING THIS!  REPORT TO ANTHONYD.", 5, 14, 10.0);
  AssignCommand(oPC, ClearAllActions());
  AssignCommand(oPC, TriggerCutscenes());  
}


// ---------------------------------------------------------------
// ST: Determine which cutscene to trigger.
// ---------------------------------------------------------------
void TriggerCutscenes() {

}

// ---------------------------------------------------------------
// ST: Setup and run the specified cutscene.
// ---------------------------------------------------------------
void RunCutscene(int nScene) {

}

// ---------------------------------------------------------------
// ST: Utility - Identical to one found in k_align_movie.
//     Returns the number of visited planets.
// ---------------------------------------------------------------
int PlanetCount() {
  int i = 0;
  return i;
}

// ---------------------------------------------------------------
// ST: Utility - Check if a NPC has joined the party.
// ---------------------------------------------------------------
int GetIsAvailable(int nNPC) {
  int bTest = GetNPCSelectability(nNPC);  
  if ((bTest == TRUE) || (bTest == 0))
    return TRUE;
  else
    return FALSE;
}

// ---------------------------------------------------------------
// ST: Utility - returns difference between two party members
//     influence with the player.
// ---------------------------------------------------------------
int GetInfluenceDiff(int nNPC1, int nNPC2) {
  int nInf1 = GetInfluence(nNPC1);
  int nInf2 = GetInfluence(nNPC2);
  return (nInf1 - nInf2);
}

// ---------------------------------------------------------------
// ST: Utility - return character level of specified party member.
// ---------------------------------------------------------------
int CheckNPCLevel(int nNPC) {
  object oNPC = GetObjectByTag(GetNPCTag(nNPC));
  if (GetIsObjectValid(oNPC)) {
    int nLevel = GetHitDice(oNPC);
    return nLevel;
  }
  return 0;
}

// ---------------------------------------------------------------
// ST: Utility Returns the points in a skill a party member has.
// ---------------------------------------------------------------
int CheckNPCSkill(int nNPC, int nType) {
  object oNPC = GetObjectByTag(GetNPCTag(nNPC));
  int nSkill = 0;
  if (GetIsObjectValid(oNPC)) {
    nSkill = GetSkillRank(nType, oNPC);
  }
  return nSkill;
}

// ---------------------------------------------------------------
// ST: Utility - a completely unnessecary wrapper. Fade from black.
// ---------------------------------------------------------------
void DelayedFadeIn(float fDelay, float fWait, float fLength) {
  DelayCommand(fDelay, SetGlobalFadeIn(fWait, fLength));
}

// ---------------------------------------------------------------
// ST: Utility - move party member to specified waypoint and return
//     object reference to the party member if successful.
// ---------------------------------------------------------------
object GetAndMoveNPCToWaypoint(int nNPC, string sTag) {
  object oNPC = GetObjectByTag(GetNPCTag(nNPC));
  object oWP  = GetObjectByTag(sTag);
  if (GetIsObjectValid(oWP)) {
    AssignCommand(oNPC, ClearAllActions());
    AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWP)));
    return oNPC;
  }
  else {
    AurPostString("INVALID WAYPOINT FOR CUTSCENE", 15, 20, 10.0);
  return OBJECT_INVALID;
  }
}

// ---------------------------------------------------------------
// ST: Utility - move Puppet to specified waypoint and return an
//               object reference to the puppet if successful.
// ---------------------------------------------------------------
object GetAndMovePUPToWaypoint(int nPUP, string sTag) {
  object oPUP = GetObjectByTag(GetPuppetTag(nPUP));
  object oWP  = GetObjectByTag(sTag);
  if (GetIsObjectValid(oWP)) {
    AssignCommand(oPUP, ClearAllActions());
    AssignCommand(oPUP, ActionJumpToLocation(GetLocation(oWP)));
    return oPUP;
  }
  else {
    AurPostString("INVALID WAYPOINT FOR CUTSCENE", 15, 20, 10.0);
    return OBJECT_INVALID;
  }
}

