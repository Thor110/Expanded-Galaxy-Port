// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void NPCFlee() {
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("tar04_wprepflee1", 0), TRUE, 1.0);
	ActionJumpToObject(GetObjectByTag("tar04_wprepflee2", 0), TRUE);
}

void main() {
	
	object oRepSld = GetObjectByTag("REPUBLICSO", 0);
	object oRak;
	int nCnt;
	object oWP;
	
	Db_PostString("OWNER - " + GetTag(OBJECT_SELF), 5, 5, 5.0);
	
	nCnt = 0;
	
	while (GetIsObjectValid(oWP = GetObjectByTag("tar04_wpreprg", nCnt)))
		{
			oRak = CreateObject(OBJECT_TYPE_CREATURE, "tar04_repsolrg", GetLocation(oWP), FALSE);
			
			SetPlotFlag(oRak, TRUE);
			
			nCnt++;
		}
	
	SetGlobalFadeOut(3.5, 0.5);
	
	AssignCommand(oRepSld, NPCFlee());
	
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
	
	ExecuteScript("k_act_cmusic_on", OBJECT_SELF);
}
