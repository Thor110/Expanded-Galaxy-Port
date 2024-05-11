// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	Db_PostString("PARTYDONE", 5, 5, 5.0);
	
	int nNPC;
	int nNum;
	object oNPC;
	string sTag;
	
	SetAreaUnescapable(TRUE);
	
	Db_PostString("PARTY CLEANUP - " + IntToString(GetPartyMemberCount()), 5, 5, 5.0);
	
	nNPC = 0;
	
	while (nNPC < 8)
		{
			if (IsNPCPartyMember(nNPC))
				{
					nNum = 0;
					
					switch (nNPC)
						{
							case 0: sTag = "bastila"; break;
							case 1: sTag = "cand"; break;
							case 2: sTag = "carth"; break;
							case 3: sTag = "hk47"; break;
							case 4: sTag = "jolee"; break;
							case 5: sTag = "juhani"; break;
							case 6: sTag = "mission"; break;
							case 7: sTag = "t3m4"; break;
							case 8: sTag = "zaalbar"; break;
						}
					
					Db_PostString("PROCESSING " + sTag, 5, 6, 5.0);
					
					while (GetIsObjectValid(oNPC = GetObjectByTag(sTag, nNum)))
						{
							if (!IsObjectPartyMember(oNPC))
								{
									Db_PostString("DESTROYING " + sTag, 5, 7 + nNum, 5.0);
									
									DestroyObject(oNPC, 0.0, TRUE, 0.0);
								}
							
							nNum++;
						}
				}
			
			nNPC++;
		}
}
