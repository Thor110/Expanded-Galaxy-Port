// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("Bastila", 0);
	object oSta_bast_pc_move0 = GetObjectByTag("sta_bast_pc_move0", 0);
	object oSta_bast_pc_jump0 = GetObjectByTag("sta_bast_pc_jump0", 0);
	object oSta_bast_pc_jump1 = GetObjectByTag("sta_bast_pc_jump1", 0);
	location location1 = GetLocation(oSta_bast_pc_jump0);
	location location3 = GetLocation(oSta_bast_pc_jump1);
	location location5 = GetLocation(GetObjectByTag("sta_party_last_jump_pc1", 0));
	string string1;
	if (GetIsObjectValid(GetObjectByTag("HK47", 0))) {
		string1 = "HK47";
		RemovePartyMember(3);
	}
	else {
		if (GetIsObjectValid(GetObjectByTag("Juhani", 0))) {
			string1 = "Juhani";
			RemovePartyMember(5);
		}
		else {
			if (GetIsObjectValid(GetObjectByTag("Jolee", 0))) {
				string1 = "Jolee";
				RemovePartyMember(4);
			}
			else {
				if (GetIsObjectValid(GetObjectByTag("Cand", 0))) {
					string1 = "Cand";
					RemovePartyMember(1);
				}
				else {
					if (GetIsObjectValid(GetObjectByTag("Zaalbar", 0))) {
						string1 = "Zaalbar";
						RemovePartyMember(8);
					}
					else {
						if (GetIsObjectValid(GetObjectByTag("Mission", 0))) {
							string1 = "Mission";
							RemovePartyMember(6);
						}
						else {
							if (GetIsObjectValid(GetObjectByTag("T3M4", 0))) {
								string1 = "T3M4";
								RemovePartyMember(7);
							}
						}
					}
				}
			}
		}
	}
	sub1(5.9);
	SetPartyLeader(0xFFFFFFFF);
	RemovePartyMember(0);
	AssignCommand(oPC, JumpToLocation(location1));
	AssignCommand(oBastila, ClearAllActions());
	AssignCommand(oBastila, JumpToLocation(location3));
	AssignCommand(GetObjectByTag(string1, 0), JumpToLocation(location5));
	DelayCommand(0.5, AssignCommand(oPC, JumpToLocation(location1)));
	DelayCommand(0.5, AssignCommand(oBastila, JumpToLocation(location3)));
	DelayCommand(0.5, AssignCommand(GetObjectByTag(string1, 0), JumpToLocation(location5)));
	DelayCommand(1.0, AssignCommand(oPC, ActionMoveToLocation(GetLocation(oSta_bast_pc_move0), 0)));
	DelayCommand(4.0, AssignCommand(oPC, SetFacing(GetFacing(oSta_bast_pc_move0))));
}

