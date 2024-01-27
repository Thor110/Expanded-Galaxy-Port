// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	SetGlobalBoolean("Tar_SithGunTurret", TRUE);
	
	object oTurret;
	int nCnt;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oTurret = GetObjectByTag("tar09_turret", nCnt)))
		{
			ChangeToStandardFaction(oTurret, STANDARD_FACTION_NEUTRAL);
			
			nCnt++;
		}
}
