// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function and added subroutine, except original used an earlier version
// of ActionStartConversation with one less input variable.
// Likely used a Korriban include that does not exist in the shipped game files. 

string sCalo = "kor_calo";
string sBandon = "kor_bandon";

void SpawnMooks(string sNPC) {
	
	string sMook1;
	string sMook2;
	vector vCorpse1 = GetPosition(GetObjectByTag("kas_corpse_wp", 0));
	vector vCorpse2 = Vector(vCorpse1.x, vCorpse1.y, vCorpse1.z - 1.0);
	location lCorpse = Location(vCorpse2, GetFacing(GetObjectByTag("kas_corpse_wp", 0)));
	
	if (sNPC == sCalo)
		{
			vector vDrink1 = GetPosition(GetObjectByTag("kas_drink_wp", 0));
			vector vDrink2 = Vector(vDrink1.x, vDrink1.y, vDrink1.z + 0.35);
			location lDrink = Location(vDrink2, GetFacing(GetObjectByTag("kas_drink_wp", 0)));
			
			sMook1 = "kor_calo_thug1";
			sMook2 = "kor_calo_thug2";
			
			CreateObject(OBJECT_TYPE_CREATURE, sMook1, GetLocation(GetObjectByTag("kor_calo_thug1_wp", 0)), FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, sMook2, GetLocation(GetObjectByTag("kor_calo_thug2_wp", 0)), FALSE);
		}
		else
			{
				sMook1 = "kor_bandon_thug1";
				sMook2 = "kor_bandon_thug2";
				
				CreateObject(OBJECT_TYPE_CREATURE, sMook1, GetLocation(GetObjectByTag("kor_calo_thug1_wp", 0)), FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, sMook2, GetLocation(GetObjectByTag("kor_calo_thug2_wp", 0)), FALSE);
			}
}

void main() {
	
	object oNPC;
	int nGlobal = GetGlobalNumber("K_KALO_BANDON");
	
	if (GetIsPC(GetEnteringObject()))
		{
			if (nGlobal == 10)
				{
					SetGlobalNumber("K_KALO_BANDON", 20);
					
					SpawnMooks(sCalo);
					
					oNPC = CreateObject(OBJECT_TYPE_CREATURE, sCalo, GetLocation(GetObjectByTag("wp_kor_calo", 0)), FALSE);
					
					AssignCommand(GetObjectByTag("invis_calo_talker", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE, "", "", "", "", "", ""));
				}
				else if (nGlobal == 30)
					{
						SetGlobalNumber("K_KALO_BANDON", 40);
						
						SpawnMooks(sBandon);
						
						oNPC = CreateObject(OBJECT_TYPE_CREATURE, sBandon, GetLocation(GetObjectByTag("wp_kor_calo", 0)), FALSE);
						
						AssignCommand(GetObjectByTag("invis_bandon_talker", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE, "", "", "", "", "", ""));
					}
		}
}
