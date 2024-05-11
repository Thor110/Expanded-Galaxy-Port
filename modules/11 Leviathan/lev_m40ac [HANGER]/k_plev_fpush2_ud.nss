// DeNCS failed to decompile. Manual reconstruction. Partial binary match. Original bytecode results in an "unbalanced stack in block fork merge" error from ncsdis.

#include "k_inc_lev"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 2000:
				{
					object oNPC = GetPartyMemberByIndex(0);
					
					Db_PostString("FORCE PUSHED - " + GetTag(oNPC), 5, 5, 5.0);
					
					if (UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
						{
							ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForcePushTargeted(GetLocation(OBJECT_SELF), FALSE), oNPC, 0.5);
						}
				}
			break;
		}
}
