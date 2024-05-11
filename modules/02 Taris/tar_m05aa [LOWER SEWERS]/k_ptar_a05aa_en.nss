// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void AlphaSpawn() {
	
	object oRak;
	object oSpwn;
	int nCnt;
	
	oRak = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
	
	nCnt = 0;
	
	while (GetIsObjectValid(oRak))
		{
			if (GetTag(oRak) == "tar04_alphaghoul")
				{
					nCnt++;
				}
			
			oRak = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
		}
	
	if (nCnt >= 3)
		{
			return;
		}
	
	Db_PostString("SPAWNING RAKGHOULS", 5, 5, 5.0);
	
	nCnt = 0;
	oSpwn = OBJECT_INVALID;
	
	while (GetIsObjectValid(oRak = GetObjectByTag("tar04_rakspawn", nCnt)))
		{
			if (GetDistanceBetween(oRak, GetNearestObjectByTag("tar04_alphaghoul", oRak, 1)) > 30.0)
				{
					oSpwn = oRak;
					
					nCnt = 100;
				}
			
			nCnt++;
		}
	
	if (!GetIsObjectValid(oSpwn))
		{
			oSpwn = GetObjectByTag("tar04_rakspawn", Random(4));
		}
	
	Db_PostString("SPAWN POINT - " + GetTag(oSpwn), 5, 6, 5.0);
	
	oRak = CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghou001", GetLocation(oSpwn), FALSE);
	
	if (GetIsObjectValid(oRak))
		{
			Db_PostString("ALPHA SPAWNED", 5, 7, 5.0);
		}
	
	nCnt = 0;
	
	while (nCnt < 4)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghoulr", GetLocation(oSpwn), FALSE);
			
			nCnt++;
		}
}

void main() {
	
	TAR_CleanupDeadObjects(OBJECT_SELF);
	
	if (!GetLoadFromSaveGame())
		{
			AlphaSpawn();
		}
}
