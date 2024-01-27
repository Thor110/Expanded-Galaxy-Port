// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_lev"

void main() {
	
	int nCnt;
	object oObject;
	
	if (GetGlobalNumber("LEV_BRIDGEDEFENSE") & 1)
		{
			nCnt = 0;
			
			while (GetIsObjectValid(oObject = GetObjectByTag("lev40_mk1guard", nCnt)))
				{
					ChangeToStandardFaction(oObject, STANDARD_FACTION_NEUTRAL);
					
					nCnt++;
				}
		}
	
	if (GetGlobalNumber("LEV_BRIDGEDEFENSE") & 2)
		{
			nCnt = 0;
			
			while (GetIsObjectValid(oObject = GetObjectByTag("lev40_turret", nCnt)))
				{
					ChangeToStandardFaction(oObject, STANDARD_FACTION_NEUTRAL);
					
					nCnt++;
				}
		}
}
