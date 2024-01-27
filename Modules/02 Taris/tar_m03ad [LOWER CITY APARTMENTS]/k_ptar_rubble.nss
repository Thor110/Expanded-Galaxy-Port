// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	int nCnt;
	object oRubbleWP;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oRubbleWP = GetObjectByTag("tar03_wprubble", nCnt)))
		{
			CreateObject(OBJECT_TYPE_PLACEABLE, "tar03_rubble", GetLocation(oRubbleWP), FALSE);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tar03_rubble2", GetLocation(oRubbleWP), FALSE);
			
			nCnt++;
		}
	
	CreateObject(OBJECT_TYPE_PLACEABLE, "plc_windmill", GetLocation(GetObjectByTag("tar03_wpbeam0", 0)), FALSE);
}
