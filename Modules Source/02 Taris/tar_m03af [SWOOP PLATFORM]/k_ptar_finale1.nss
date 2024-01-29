// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	int nCnt;
	object oSwoopie;
	float fDelay = 0.0;
	
	UT_ActionPauseConversation(3.0);
	
	DelayCommand(1.0, AssignCommand(GetFirstPC(), PlayAnimation(ANIMATION_FIREFORGET_BOW)));
	
	nCnt = 0;
	
	while (GetIsObjectValid(oSwoopie = GetObjectByTag("tar03_swoopie", nCnt)))
		{
			DelayCommand(fDelay, SignalEvent(oSwoopie, EventUserDefined(2000)));
			DelayCommand(fDelay, PlaySound("cs_swoopcheer"));
			
			fDelay = fDelay + 0.3;
			
			nCnt++;
		}
}
