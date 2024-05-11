// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_lev"

void main() {
	
	int nCnt;
	object oDoor;
	int nAmt;
	
	nAmt = UT_DeterminesItemCost(5, SKILL_COMPUTER_USE);
	
	UT_RemoveComputerSpikes(nAmt);
	
	SetGlobalBoolean("Lev_storage", TRUE);
	
	nCnt = 0;

	while (GetIsObjectValid(oDoor = GetObjectByTag("lev40_storage", nCnt)))
		{
			SetLocked(oDoor, FALSE);
			
			nCnt++;
		}
}
