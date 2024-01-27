// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	object oTurret;
	int nCnt;
	
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "tar10_mechid")))
		{
			Db_PostString("DISARMING TURRETS", 5, 5, 5.0);
			
			nCnt = 0;
			
			while (GetIsObjectValid(oTurret = GetObjectByTag("tar10_thermturret", nCnt)))
				{
					ChangeToStandardFaction(oTurret, STANDARD_FACTION_NEUTRAL);
					
					nCnt++;
				}
		}
}
