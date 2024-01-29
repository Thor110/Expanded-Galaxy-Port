// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_unk"

void main() {
	
	int nCnt;
	object oRak;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oRak = GetObjectByTag("blackrakata411", nCnt)))
		{
			ChangeToStandardFaction(oRak, STANDARD_FACTION_HOSTILE_1);
			
			nCnt++;
		}
}
