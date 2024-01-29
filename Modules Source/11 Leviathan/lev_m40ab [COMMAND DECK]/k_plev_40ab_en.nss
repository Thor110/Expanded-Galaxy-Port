// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_lev"

void main() {
	
	object oWP;
	int nCnt;
	
	SetGlobalNumber("LEV_LEVEL", 2);
	
	if (GetGlobalBoolean("LEV_BRIDGEOPEN"))
		{
			SetLocked(GetObjectByTag("lev40_bridgedoor", 0), FALSE);
		}
	
	if (GetGlobalBoolean("LEV_SAULDEAD") && !GetGlobalBoolean("LEV_REPOP40AB"))
		{
			SetGlobalBoolean("LEV_REPOP40AB", TRUE);
			
			SoundObjectPlay(GetObjectByTag("lev40_alarm", 0));
			
			nCnt = 0;
			
			while (GetIsObjectValid(oWP = GetObjectByTag("lev40_wpdarkspawn", nCnt)))
				{
					CreateObject(OBJECT_TYPE_CREATURE, "n_darkjedim", GetLocation(oWP), FALSE);
					
					CreateObject(OBJECT_TYPE_CREATURE, "n_darkjedif", GetLocation(oWP), FALSE);
					
					nCnt++;
				}
		}
}
