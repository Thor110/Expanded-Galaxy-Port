// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_lev"

void main() {
	
	int nGlobal = GetGlobalNumber("LEV_SPACEWALK");
	int nCnt;
	object oNPC;
	
	return;
	
	if (nGlobal > 0)
		{
			nGlobal = nGlobal - 6;
			
			if (nGlobal <= 0)
				{
					nCnt = 0;
					
					while (nCnt < GetPartyMemberCount())
						{
							oNPC = GetPartyMemberByIndex(nCnt);
							
							ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), GetFirstPC(), 0.0);
							
							nCnt++;
						}
				}
				
			SetGlobalNumber("LEV_SPACEWALK", nGlobal);
		}
}
