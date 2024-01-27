// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oGas;
	object oNPC;
	int nCnt;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oGas = GetObjectByTag("tar09_gasarea", nCnt)))
		{
			oNPC = GetFirstInPersistentObject(oGas, OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
			
			while (GetIsObjectValid(oNPC))
				{
					ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectSleep(), oNPC, 0.0);
					
					oNPC = GetNextInPersistentObject(oGas, OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
				}
			
			nCnt++;
		}
}
