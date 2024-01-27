// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tat"

int nPCGender = GetGender(GetFirstPC());

int StartingConditional() {
	
	if (GetTalkTanisGlobal() == TRUE && nPCGender == GENDER_FEMALE)
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}
