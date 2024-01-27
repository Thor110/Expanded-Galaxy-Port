// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	object oThug;
	int nCnt = 0;
	
	while (GetIsObjectValid(oThug = GetObjectByTag("tar02_levinthug", nCnt)))
		{
			ChangeToStandardFaction(oThug, STANDARD_FACTION_HOSTILE_1);
			AssignCommand(oThug, ActionAttack(GetFirstPC(), FALSE));
			
			nCnt++;
		}
}
