// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	object oTurret;
	int nCnt;
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering))
		{
			if (GetGlobalNumber("Tar_VulkarElevator") == 2)
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
}
