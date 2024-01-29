// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void Spawn_Party() {
	
	location lWP;
	object oWP;
	object oNPC;
	int nNum = 0;
	
	if (IsAvailableCreature(0) || nNum == 1)
		{
			oNPC = GetObjectByTag("bastila", 0);
			oWP = GetWaypointByTag("pebn_bastila");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_bastilla", lWP);
				}
		}
	
	if (IsAvailableCreature(1) || nNum == 1)
		{
			oNPC = GetObjectByTag("cand", 0);
			oWP = GetWaypointByTag("pebn_canderous");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_cand", lWP);
				}
		}
	
	if (IsAvailableCreature(2) || nNum == 1)
		{
			oNPC = GetObjectByTag("carth", 0);
			
			if (!GetIsObjectValid(oNPC))
				{
					Db_PostString("NO CARTH", 5, 5, 5.0);
				}
				else
					{
						Db_PostString("CARTH", 5, 5, 5.0);
					}
			
			oWP = GetWaypointByTag("pebn_carth");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_carth", lWP);
				}
		}
	
	if (IsAvailableCreature(3) || nNum == 1)
		{
			oNPC = GetObjectByTag("hk47", 0);
			oWP = GetWaypointByTag("pebn_hk47");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_hk47", lWP);
				}
		}
	
	if (IsAvailableCreature(4) || nNum == 1)
		{
			oNPC = GetObjectByTag("jolee", 0);
			oWP = GetWaypointByTag("pebn_jolee");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_jolee", lWP);
				}
		}
	
	if (IsAvailableCreature(5) || nNum == 1)
		{
			oNPC = GetObjectByTag("juhani", 0);
			oWP = GetWaypointByTag("pebn_juhani");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_juhani", lWP);
				}
		}
	
	if (IsAvailableCreature(6) || nNum == 1)
		{
			oNPC = GetObjectByTag("mission", 0);
			oWP = GetWaypointByTag("pebn_mission");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_mission", lWP);
				}
		}
	
	if (IsAvailableCreature(7) || nNum == 1)
		{
			oNPC = GetObjectByTag("t3m4", 0);
			oWP = GetWaypointByTag("pebn_t3m4");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					DelayCommand(2.0, UT_CreateObject(OBJECT_TYPE_CREATURE, "p_t3m4", lWP));
				}
		}
	
	if (IsAvailableCreature(8) || nNum == 1)
		{
			oNPC = GetObjectByTag("zaalbar", 0);
			oWP = GetWaypointByTag("pebn_zaalbar");
			lWP = GetLocation(oWP);
			
			if (GetIsObjectValid(oWP) && !GetIsObjectValid(oNPC))
				{
					UT_CreateObject(OBJECT_TYPE_CREATURE, "p_zaalbar", lWP);
				}
		}
}

void ClearPartyMembers() {
	int nNPC;
	int nNum;
	object oNPC;
	string sTag;
	
	nNPC;
	
	while (nNPC <= 8)
		{
			if (IsNPCPartyMember(nNPC))
				{
					RemovePartyMember(nNPC);
					
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
					
					nNum = 3;
					
					while (nNum >= 0)
						{
							if (GetIsObjectValid(oNPC = GetObjectByTag(sTag, nNum)))
								{
									DestroyObject(oNPC, 0.0, TRUE, 0.0);
								}
							
							nNum--;
						}
					
				}
			
			nNPC++;
		}
}

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) && UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
		{
			Db_PostString("CLEAR PARTY", 5, 5, 5.0);
			
			ClearPartyMembers();
			
			DelayCommand(1.0, Spawn_Party());
			
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE);
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, FALSE);
		}
		else if (GetIsPC(oEntering) && UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02))
			{
				Db_PostString("SELECT PARTY", 5, 5, 5.0);
				
				if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF))
					{
						SetAreaUnescapable(FALSE);
						
						ShowPartySelectionGUI("k_ptar_partydone");
					}
					
				UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE);
				UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, FALSE);
			}
}
