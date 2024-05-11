// DeNCS failed to decompile. Manual reconstruction. Partial binary match. Original bytecode results in an "unbalanced stack in block fork merge" error from ncsdis.

#include "k_inc_lev"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 2000:
				{
					object oPC = GetFirstPC();
					
					Db_PostString("FORCE PUSHED - " + GetTag(oPC), 5, 5, 5.0);
					
					ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForcePushTargeted(GetLocation(OBJECT_SELF), FALSE), oPC, 1.0);
				}
			break;
		}
}
