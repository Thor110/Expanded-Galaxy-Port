// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oTurret;
	int nCnt;
	
	SetGlobalBoolean("Tar_SithGunTurret", TRUE);
	
	nCnt = 0;
	
	while (GetIsObjectValid(oTurret = GetObjectByTag("tar09_turret", nCnt)))
		{
			ChangeToStandardFaction(oTurret, STANDARD_FACTION_NEUTRAL);
			
			nCnt++;
		}
}
