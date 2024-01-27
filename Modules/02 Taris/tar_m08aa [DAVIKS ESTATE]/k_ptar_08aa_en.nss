// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void OpenCages() {
	
	int nCnt;
	object oCage;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oCage = GetObjectByTag("tar08_deadcage", nCnt)))
		{
			Db_PostString("CAGE " + IntToString(nCnt), 5, 5 + nCnt, 5.0);
			
			AssignCommand(oCage, ActionPlayAnimation(ANIMATION_PLACEABLE_OPEN, 1.0, 0.0));
			
			nCnt++;
		}
}

void main() {
	DestroyObject(GetObjectByTag("taris_armband"));
	DelayCommand(1.0, OpenCages());
}
