// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void RunToWPCaloA() {
	ActionMoveToObject(GetObjectByTag("tar08_wpcaloa", 0), TRUE, 1.0);
}

void RunToWPDavikA() {
	ActionMoveToObject(GetObjectByTag("tar08_wpdavika", 0), TRUE, 1.0);
}

void RunEvent(object oTarget) {
	object oArea = GetArea(OBJECT_SELF);
	
	SignalEvent(oTarget, EventUserDefined(2000));
}

void main() {
	
	int nCnt;
	object oDoor = GetObjectByTag("tar08_hangardoor", 0);
	object oObj;
	object oPM;
	object oDebris1 = GetNearestObjectByTag("tar08_ceilingfall", GetObjectByTag("tar08_wpcollapse1", 0), 1);
	object oDebris2 = GetNearestObjectByTag("tar08_ceilingfall", GetObjectByTag("tar08_wpcollapse0", 0), 1);
	
	nCnt = 1;
	
	while (GetIsObjectValid(oObj = GetNearestObjectByTag("tar08_wpexplosion", OBJECT_SELF, nCnt)) && nCnt < 4)
		{
			Db_PostString("EXPLOSION", 5, 5, 2.0);
			
			DelayCommand((nCnt - 1) * 2.0, RunEvent(oObj));
			
			nCnt++;
		}
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	DelayCommand(1.0, AssignCommand(oDoor, ActionLockObject(oDoor)));
	
	nCnt = 0;
	
	while (nCnt < GetPartyMemberCount())
		{
			oPM = GetPartyMemberByIndex(nCnt);
			
			switch (nCnt)
				{
					case 0:
							oObj = GetObjectByTag("tar08_hangara", 0);
							break;
					case 1:
							oObj = GetObjectByTag("tar08_hangarb", 0);
							break;
					default:
							oObj = GetObjectByTag("tar08_hangarc", 0);
							break;
				}
			
			UT_TeleportPartyMember(oPM, GetLocation(oObj));
			
			nCnt++;
		}
	
	ActionPauseConversation();
	
	RunToWPDavikA();
	
	ActionResumeConversation();
	
	AssignCommand(GetObjectByTag("Calo082", 0), RunToWPCaloA());
}
