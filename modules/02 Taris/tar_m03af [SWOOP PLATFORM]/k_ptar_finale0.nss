// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	int nCnt;
	object oSwoopieWP;
	
	SetGlobalFadeIn(0.0, 1.0);
	
	SetLockOrientationInDialog(GetObjectByTag("raceannoun031", 0), TRUE);
	
	nCnt = 0;
	
	AssignCommand(GetFirstPC(), JumpToLocation(GetLocation(GetObjectByTag("tar03_wpraceover2", 0))));
	
	while (GetIsObjectValid(oSwoopieWP = GetObjectByTag("tar03_wpswoopie", nCnt)))
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tar03_swoopie" + IntToString(nCnt), GetLocation(oSwoopieWP));
			
			nCnt++;
		}
}
